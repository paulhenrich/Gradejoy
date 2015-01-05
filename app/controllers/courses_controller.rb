class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:edit, :update, :destroy]
  respond_to :html

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    @assignments = Assignment.all
    respond_with(@course)
  end

  def new
    @course = current_user.courses.build
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = current_user.courses.build(course_params)

    if @course.save
      redirect_to @course
    else
      render :new
    end
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :time, :period, :user, :section)
    end

    def authorized_user
      @course = current_user.courses.find_by(id: params[:id])
      redirect_to courses_path, notice: "Not authorized to edit this course" if @course.nil?
    end
end
