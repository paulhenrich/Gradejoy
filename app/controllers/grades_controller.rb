class GradesController < ApplicationController
  before_action :set_course, only: [:new, :create, :update, :destroy]
  before_action :set_student, only: [:new, :create, :update, :destroy]
  before_filter :authenticate_user!
  before_action :authorized_user, except: [:index, :new, :create]

  def new
    @url = url_for(:controller => 'grades', :action => 'create')
    @grade = current_user.grades.new
    respond_with(@course)
  end

  def create
    @grade = current_user.grades.new(:points_earned => grade_params[:points_earned], :student_id => @student.id, :course_id => @course.id)

    if @grade.save
      redirect_to @course
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def set_student
    @student = Student.find(params[:student_id])
  end

  def set_assignment

  def grade_params
    params.require(:grade).permit(:points_earned)
  end

  def authorized_user
    @grade = current_user.grades.find_by(id: params[:id])
    redirect_to courses_path, notice: "Not authorized to edit or view that grade" if @grade.nil?
  end


end
