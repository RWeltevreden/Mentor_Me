class ConnectionsController < ApplicationController

  def create
    @connection = Connection.new(connection_params)


    if @connection.save
      redirect_to root_path
    else
      render json: @connection.errors, status: :unprocessable_entity
    end

  end

  private

  def connection_params
    params.require(:connection).permit(:mentee_id, :mentor_id, :status)
  end

  def show
    @connection = Connection.find(params[:id])
    @mentor = @connection.mentor
    @mentee = @connection.mentee

  end
end
