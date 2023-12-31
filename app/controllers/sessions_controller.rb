class SessionsController < ApplicationController
    def new
    end
    def create
        @user = User.find_by_email(params[:session][:email].downcase.strip)
        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id 
            redirect_to '/dogs'
        else
            redirect_to '/login'
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to '/login'
    end
end
