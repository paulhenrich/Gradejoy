class EnrollStudentController < ApplicationController
  before_action :set_course, only: [:create, :new]
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @url = url_for(:controller => 'enroll_student', :action => 'create')
    @student = Student.new
  end

  def create
    @student = Student.new student_params
    if @student.save
      @enrollment = CourseEnrollment.new :student_id => @student.id, :course_id => @course.id
      if @enrollment.save
        redirect_to @course
      end
    else
      render :new
    end

  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :grade_level, :birth_month, :birth_day, :birth_year)
  end
end
