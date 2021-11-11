class EnrollmentsController < ApplicationController
  skip_before_action :verify_authenticity_token  


  def create
    @course = Course.find_by(code: params[:class])
    @enrollment = Enrollment.new(course_id:@course.id)
    if @enrollment.save?
      redirect_to '/welcome'
    end
  
  end
end
