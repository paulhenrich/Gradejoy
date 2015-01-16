class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_action :authorized_user, except: [:index, :new, :create]
  respond_to :html

  def index
    @assignments = current_user.assignments
    respond_with(@assignments)
  end

  def show
    respond_with(@assignment)
  end

  def new
    @url = url_for(:controller => 'assignments', :action => 'create')
    @assignment = current_user.assignments.new
    respond_with(@assignment)
  end

  def edit
  end

  def create
    @assignment = current_user.assignment.new(assignment_params)

    if @assignment.save
      redirect_to @assignment
    else
      render :new
    end
  end

  def update
    @assignment.update(assignment_params)
    respond_with(@assignment)
  end

  def destroy
    @assignment.destroy
    respond_with(@assignment)
  end

  private
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def assignment_params
      params.require(:assignment).permit(:title, :date_created, :date_due, :category, :total_points)
    end

    def authorized_user
      @assignment = current_user.assignments.find_by(id: params[:id])
      redirect_to courses_path, notice: "Not authorized to view that assignment" if @assignment.nil?
    end
end
