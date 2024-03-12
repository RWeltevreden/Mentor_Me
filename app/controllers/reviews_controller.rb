class ReviewsController < ApplicationController

  def index
    @mentor = Mentor.find_by(id: params[:mentor_id])
    @reviews = @mentor.reviews
  end

end
