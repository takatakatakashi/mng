class GourmetsController < ApplicationController
  def index
    @gourmets = Gourmet.all
  end

  def new
    @gourmet = Gourmet.new
  end

  def create
    Gourmet.create(gourmet_params)
  end

  def show
    Gourmet.show(gourmet_params)
  end

  def destroy
    gourmet = Gourmet.find(params[:id])
    gourmet.destroy
  end

  def edit
    @gourmet = Gourmet.find(params[:id])
  end

  def update
    gourmet = Gourmet.find(params[:id])
    gourmet.update(tweet_params)
  end

  def show
    @gourmet = Action.find(params[:id])
  end

  private
  def gourmet_params
    params.require(:gourmet).permit(:name, :text, :image)
  end
end
