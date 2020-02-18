class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def details
    # raise
    @task = Task.find(params[:id])
  end

  def new

  end

  private

  def check_params_create

  end
end
