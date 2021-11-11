class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def new
  end
  def login
  end
  def create
     @user = User.find_by(username: params[:username])
     if @user
        session[:user_id] = @user.id
        redirect_to '/'
     else
        redirect_to '/login'
     end
  end
  def page_requires_login
  end
  def destroy
   redirect_to '/welcome'
   session[:user_id] = nil
  end
  



  end