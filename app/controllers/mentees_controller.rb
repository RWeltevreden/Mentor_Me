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

  private

  def mentee_params
    params.require(:mentee).permit(:goal)
  end
end
