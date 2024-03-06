class MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new(mentor_params)
    @mentor.user = current_user
    @mentor.save

    redirect_to root_path
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  private

  def mentor_params
    params.require(:mentor).permit(:job_title, :company)
  end
end
