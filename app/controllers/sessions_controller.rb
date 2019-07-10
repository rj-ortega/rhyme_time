class SessionsController < ApplicationController
    def new
      @user = User.new
  
      render "login/login"
    end
  
    def create
      @user = User.find_by(username: params[:user][:username])
      if @user == nil
          @user = User.new
          @error = "User doesn't exist"
          render 'login/login'
      elsif (@user.authenticate(params[:user][:password]))
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        @user = User.new
        @error = "Re enter password"
        render 'login/login'
      end
    end
  
    def destroy
      session[:user_id] = nil
  
      redirect_to users_path
    end
  end
  