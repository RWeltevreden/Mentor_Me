class TasksController < ApplicationController
  def index
    @connection = Connection.find(params[:connection_id])
    @tasks = @connection.tasks.order(:end_date)
    @mentee = @connection.mentee
  end

  def new
    @task = Task.new
    @connection = Connection.find(params[:connection_id])
  end

  def create
    @task = Task.new(task_params)
    @task.completed = false
    @connection = Connection.find(params[:connection_id])
    @task.connection = @connection
    @task.save

    redirect_to connection_tasks_path(@connection)
  end

  def show
    @connection = Connection.find(params[:connection_id])
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def mark_as_done
    @task = Task.find(params[:id])
    @task.update(status: 'done')

    redirect_to tasks_path, notice: 'Task done.'
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @connection = Connection.find(params[:connection_id])

    redirect_to connection_tasks_path(@connection), status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :end_date)
  end
end
