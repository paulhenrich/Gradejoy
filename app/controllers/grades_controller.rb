class GradesController < ApplicationController
  before_action :set_course, only: [:new, :create, :update, :destroy]
  before_action :set_student, only: [:new, :create, :update, :destroy]
  before_action :set_assignment, only: [:new, :create, :update, :destroy]
  before_filter :authenticate_user!
  before_action :authorized_user, except: [:index, :new, :create]

  def new
    @url = url_for(:controller => 'grades', :action => 'create')
    @grade = current_user.grades.new
  end

  def create
    @grade = current_user.grades.new(:points_earned => grade_params[:points_earned], :student_id => @student.id, :assignment_id => @assignment.id)

    if @grade.save
      redirect_to @course
    else
      render :new
    end
  end

  def edit
    @grade = Grade.get_grade(params[:student_id],params[:assignment_id])
    #@url = "courses/#{params[:courses_id]}/grades/#{params[:assignment_id]}/#{params[:student_id]}"
    @url = 'update'
  end

  def update
    @grade = Grade.get_grade(params[:student_id],params[:assignment_id])
    @grade.update(grade_params)
    redirect_to course_path(params[:id])
  end

  def destroy
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def set_student
    @student = Student.find(params[:student_id])
  end

  def set_assignment
    @assignment = Assignment.find(params[:assignment_id])
  end

  def grade_params
    params.require(:grade).permit(:points_earned)
  end

  def authorized_user
    @grade = current_user.grades.find_by(id: params[:id])
    redirect_to courses_path, notice: "Not authorized to edit or view that grade" if @grade.nil?
  end


end
