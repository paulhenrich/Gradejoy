class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  respond_to :html

  def index
    @students = Student.all
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @url = url_for(:controller => 'students', :action => 'create')
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    #@course = @student.courses.create(params[:course_enrollment].permit(:first_name, :last_name))

    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:first_name, :last_name, :grade_level, :birth_month, :birth_day, :birth_year)
    end
end
