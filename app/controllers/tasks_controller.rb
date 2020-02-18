class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

# os proximos 2 são relativos ao acto de criar task
  def new
    @task = Task.new
  end

  def create
    Task.create(check_params_create)

    redirect_to tasks_path
  end

# os proximos 2 são relativos ao acto de editar task

  def edit
    @task = Task.find(params[:id])
  end

  def update
     @task = Task.find(params[:id])
     @task.update(check_params_update)
     redirect_to tasks_path
  end

  def destroy
  end

  private

  def check_params_create
    params.require(:task).permit(:title, :details)
  end

  def check_params_update
    params.require(:task).permit(:title, :details, :completed)
  end
end
