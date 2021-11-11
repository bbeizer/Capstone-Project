class RegistrationsController < ApplicationController
  skip_before_action :verify_authenticity_token  

  def index
    @registrations = Registration.all
  end

  def create
    @course = Course.find_by(code: params[:class])
    username = params[:user]
    @registration = Registration.new(user:username, course:@course.code)
    if @registration.save()
      redirect_to '/'
    end
  
  end

  def destroy
    @status_update = Registration.find(params[:id])
    if @status_update.present?
      @status_update.destroy
    end
    redirect_to root_url
  end

end
