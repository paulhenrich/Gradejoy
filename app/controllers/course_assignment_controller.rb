class CourseAssignmentController < ApplicationController
  before_action :set_course, only: [:create, :new]
  before_filter :authenticate_user!, except: [:index, :show]

  def new
    @url = url_for(:controller => 'course_assignment', :action => 'create')
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new assignment_params
    if @assignment.save
      @course_assignment = CourseAssignment.new :assignment_id => @assignment.id, :course_id => @course.id
      if @course_assignment.save
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

  def assignment_params
    params.require(:assignment).permit(:title, :date_created, :date_due, :category, :total_points)
  end

end
