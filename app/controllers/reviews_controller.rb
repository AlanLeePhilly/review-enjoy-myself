class ReviewsController < ApplicationController
  def index
    @show = Show.find(params['show_id'])
    @reviews = @show.reviews
    @review = Review.new
  end
end
