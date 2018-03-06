class ShowsController < ApplicationController
  def index
    @shows = Show.order(show_date: :desc)
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      flash[:notice]  = 'Show added successfully'
      redirect_to show_reviews_path(@show)
    else
      flash[:alert] = @show.errors.full_messages
      render :new
    end

  end

  private
  def show_params
    params.require(:show).permit(:show_date, :location, :setlist, :notes)
  end
end
