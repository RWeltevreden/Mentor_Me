class ReviewsController < ApplicationController

  def index
    @mentor = Mentor.find_by(id: params[:mentor_id])
    @reviews = @mentor.reviews
  end

  def new
    # @mentor = Mentor.find_by(id: params[:mentor_id])
    @review = Review.new
  end

end
