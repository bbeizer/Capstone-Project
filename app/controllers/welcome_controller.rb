class WelcomeController < ApplicationController

  # GET /courses or /courses.json
  def index
    @courses = Course.all
    @instructors = Instructor.all
  end


end
