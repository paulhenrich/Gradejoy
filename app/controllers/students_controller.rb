class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_action :authorized_user, except: [:index, :new, :create]
  respond_to :html, :js

  respond_to :html

  def index
    @students = current_user.students
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @student = current_user.students.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = current_user.students.new(student_params)

    if @student.save
      respond_with @student
    else
      render :new
    end
  end

  def update
    @student.update(student_params)
    respond_with(@course)
  end

  def destroy
    @student.destroy
    redirect_to(:back)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :grade_level, :birthdate)
    end

    def authorized_user
      @student = current_user.students.find_by(id: params[:id])
      redirect_to courses_path, notice: "Not authorized to view that student" if @student.nil?
    end
end
