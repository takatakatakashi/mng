class GagsController < ApplicationController
  def index
    @gags = Gag.all
  end

  def new
    @gag = Gag.new
  end

  def create
    Gag.create(gag_params)
  end

  def show
    Gag.show(gag_params)
  end

  def destroy
    gag = Gag.find(params[:id])
    gag.destroy
  end

  def edit
    @gag = Gag.find(params[:id])
  end

  def update
    gag = Gag.find(params[:id])
    gag.update(gag_params)
  end

  def show
    @gag = Gag.find(params[:id])
  end

  private
  def gag_params
    params.require(:gag).permit(:name, :text, :image)
  end
end
