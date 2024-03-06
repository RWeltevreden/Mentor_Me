class MentorsController < ApplicationController
  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.save

    redirect_to mentor_path(@mentor)
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  private

  def mentor_params
    params.require(:mentor).permit(:first_name, :last_name, :email, :location)
  end
end
