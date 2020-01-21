class GamblingsController < ApplicationController
  def index
    @gamblings = Gambling.all
  end

  def new
    @gambling = Gambling.new
  end

  def create
    Gambling.create(gambling_params)
  end

  def show
    Gambling.show(gambling_params)
  end

  def destroy
    gambling = Gambling.find(params[:id])
    gambling.destroy
  end

  def edit
    @gambling = Gambling.find(params[:id])
  end

  def update
    gambling = Gambling.find(params[:id])
    gambling.update(gambling_params)
  end

  def show
    @gambling = Gambling.find(params[:id])
  end

  private
  def gambling_params
    params.require(:gambling).permit(:name, :text, :image)
  end
end
