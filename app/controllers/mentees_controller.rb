class MenteesController < ApplicationController
  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    @mentee.save

    redirect_to mentee_path(@mentee)
  end

  private
  
  def mentee_params
    params.require(:mentee).permit(:first_name, :last_name, :email, :location)
  end
end
