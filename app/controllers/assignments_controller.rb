class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  respond_to :html

  def index
    @assignments = Assignment.all
    respond_with(@assignments)
  end

  def show
    respond_with(@assignment)
  end

  def new
    @assignment = Assignment.new
    respond_with(@assignment)
  end

  def edit
  end

  def create
    @assignment = Assignment.new(assignment_params)

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
end
