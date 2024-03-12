class MenteesController < ApplicationController
  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    @mentee.user = current_user
    @mentee.save

    redirect_to root_path
  end

  def show
    @mentee = Mentee.find(params[:id])
    @connection
  end


  def update
    @mentee = Mentee.find(params[:id])
    @mentee.update(mentee_params)
      # No need for app/views/restaurants/update.html.erb
    redirect_to dashboard_path
  end


  private

  def mentee_params
    params.require(:mentee).permit(:goal)
  end
end
