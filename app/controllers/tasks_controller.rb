class TasksController < ApplicationController

  before_action :get_category # taga query

  def index
    #@tasks = task.all #ito ay lahat ng tasks
    @tasks = @category.tasks  
  end

  def new
    @task = @category.tasks.build #instead of .new para sa has_many .build ang gagamitin
  end

  def create
    @task = @category.tasks.build(task_params) #papasahan na ng params

    if @task.save
      redirect_to category_tasks_path #galing sa rails/info which is yung indextasks
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:category_id]) #mali to ata
  end

  def edit
    @task = Task.find(params[:category_id])  #mali to ata
  end
  
  def update
    @task = Task.find(params[:category_id])  #mali to ata
      if @task.update(task_params)
        redirect_to category_tasks_path
      else
        render :edit
      end
  end


  private #since naka befor action, dito muna siya pupunta beore niya gawin yung ma other methods/actions

  def get_category
    @category = Category.find(params[:category_id])
  end 

  def task_params
    params.require(:task).permit(:task_name, :task_body, :deadline, :status, :category_id) #need pa rin isama si :category_id kasi hahanapin ata ni rails itong parameter
  end
end
