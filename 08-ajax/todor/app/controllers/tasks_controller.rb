class TasksController < ApplicationController
  def landing
  end

  def index
    @tasks = Task.all
    respond_to do |format|
      format.html { }
      format.json { render :json => @tasks }
    end
  end

  def show
    @task = Task.find params[:id]
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create task_params

    respond_to do |format|
      format.html { redirect_to @task }
      format.json { render :json => Task.all }
    end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]
    task.update task_params
    redirect_to task
  end

  def destroy
    task = Task.find params[:id]
    task.destroy
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end
end
