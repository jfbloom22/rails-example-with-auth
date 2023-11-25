class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                session[:user_id] = @user.id
                format.html { redirect_to '/dogs', notice: 'User was successfully created.' }
                format.json { render :show, status: :created, location: @user }
            else
                format.turbo_stream
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end
    def preview
        @preview_user = User.new(user_params)
        respond_to do |format|
            format.turbo_stream
        end
    end
    private
        def user_params
            params.require(:user).permit(:first_name, :last_name, :email, :password)
        end
end
