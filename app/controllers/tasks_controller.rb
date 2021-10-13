# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :get_category # taga query

  def index
    @category_id = params[:category_id]
    @tasks = Category.find(params[:category_id]).tasks
    # @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params) # papasahan na ng params

    if @task.save
      redirect_to category_tasks_path # galing sa rails/info which is yung indextasks
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to category_tasks_path(@task.category_id)
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to category_tasks_path(@task.category_id)
    else
      render :index
    end
  end

  # def correct_user
  #   @task = current_user.tasks.find_by(id: params[:id])
  #   redirect_to categories_path, notice: "Not Authorized to edit this category" if @category.nil?
  # end

  private # since naka befor action, dito muna siya pupunta beore niya gawin yung ma other methods/actions

  def get_category
    @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:task_name, :task_body, :deadline, :status, :category_id, :user_id) # need pa rin isama si :category_id kasi hahanapin ata ni rails itong parameter
  end
end
