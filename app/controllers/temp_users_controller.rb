class TempUsersController < ApplicationController
    def new
        @temp_user = TempUser.new
    end
    def create
        @temp_user = TempUser.new(temp_user_params)

        respond_to do |format|
            if @temp_user.save
                format.html { redirect_to '/signup', notice: 'Temp user was successfully created.', turbo_stream: turbo_stream.replace(@temp_user, partial: "users/form", locals: { user: @temp_user }) }
                format.json { render :show, status: :created, location: @temp_user }
                @preview_user = User.new(email: @temp_user.email)
            else
                format.turbo_stream
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @temp_user.errors, status: :unprocessable_entity }
            end
        end
    end
    def preview
        @preview_temp_user = TempUser.new(temp_user_params)
        respond_to do |format|
            format.turbo_stream
        end
    end
    private
        def temp_user_params
            params.require(:temp_user).permit(:email)
        end
end
