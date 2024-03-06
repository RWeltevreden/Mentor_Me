class MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.save

    redirect_to mentor_path(@mentor)
  end

  private

  def mentor_params
    params.require(:mentor).permit(:first_name, :last_name, :email, :location)
  end
end
