class SessionsController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect_to root_path
        flash[:alert] = "Logged out successfully."
    end

    def new

    end

    def create
        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path
            flash[:success] = "Logged in Successfully!"
        else
            flash[:alert] = "Invalid Email or Password"
            render :new, status: :unprocessable_entity
        end
    end
end