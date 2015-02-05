class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_action :authorized_user, except: [:index, :new, :create]
  respond_to :html, :js

  def index
    @assignments = current_user.assignments
    respond_with(@assignments)
  end

  def show
    respond_with(@assignment)
  end

  def new
    @assignment = current_user.assignments.new
    respond_with(@assignment)
  end

  def edit
  end

  def create
    @assignment = current_user.assignment.new(assignment_params)
    @course = current_user.courses

    if @assignment.save
      respond_with @course
    else
      render :new
    end
  end

  def update
    @assignment.update(assignment_params)
    redirect_to(:back)
  end

  def destroy
    @assignment.destroy
    redirect_to(:back)
  end

  private
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def set_course
      @course = Course.find(params[:id])
    end

    def assignment_params
      params.require(:assignment).permit(:title, :date_created, :date_due, :category, :total_points)
    end

    def authorized_user
      @assignment = current_user.assignments.find_by(id: params[:id])
      redirect_to courses_path, notice: "Not authorized to view that assignment" if @assignment.nil?
    end
end
