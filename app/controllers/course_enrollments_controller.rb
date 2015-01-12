class CourseEnrollmentsController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @course_enrollments = CourseEnrollment.all
    @student = Student.all
    @course = Course.all
    respond_with(@course_enrollments)
  end

  def new
    @course_enrollments = CourseEnrollment.new
    respond_with(@course_enrollment)
  end

  def edit
  end

  def show
    respond_with(@course_enrollment)
  end

  def create
    @course_enrollment = CourseEnrollment.new(course_enrollment_params)

    if @course_enrollment.save
      redirect_to @course_enrollment
    else
      render :new
    end
  end

  def update
    @course_enrollment.update(assignment_params)
    respond_with(@course_enrollment)
  end

  def destroy
    @course_enrollment.destroy
    respond_with(@course_enrollment)
  end

  private
    def set_course_enrollment
      @course_enrollment = CourseEnrollment.find(params[:id])
    end

    def assignment_params
      params.require(:course, :student, :course_enrollment).permit(:id, :student.id, :student.first_name, :student.last_name, :course.id, :course.course_name)
    end

end
