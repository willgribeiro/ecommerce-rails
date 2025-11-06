class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "User successfully registered."
        else
            flash.now[:error] = "There were some errors with your registration."
            render :new
        end
    end
    def show
        @users = User.all
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end