class CourseEnrollmentsController < ApplicationController
  before_action :set_course_enrollment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  respond_to :html

  def index
    @course_enrollments = CourseEnrollment.all
    respond_with(@course_enrollments)
  end

  def new
    @course_enrollment = CourseEnrollment.new
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
    @course_enrollment.update(course_enrollment_params)
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

    def course_enrollment_params
      params.require(:course_enrollment).permit(:student_id, :first_name, :last_name, :course_id, :course_name)
    end

end
