class ConnectionsController < ApplicationController
  def show
    @connection = Connection.find(params[:id])
    @mentor = @connection.mentor
    @mentee = @connection.mentee
  end
end
