class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    Sport.create(sport_params)
  end

  def show
    Sport.show(sport_params)
  end

  def destroy
    sport = Sport.find(params[:id])
    sport.destroy
  end

  def edit
    @sport = Sport.find(params[:id])
  end

  def update
    sport = Sport.find(params[:id])
    sport.update(sport_params)
  end

  def show
    @sport = Sport.find(params[:id])
  end

  private
  def sport_params
    params.require(:sport).permit(:name, :text, :image)
  end
end
