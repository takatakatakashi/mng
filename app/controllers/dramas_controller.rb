class DramasController < ApplicationController
  def index
    @dramas = Drama.all
  end

  def new
    @drama = Drama.new
  end

  def create
    Drama.create(drama_params)
  end

  def show
    Drama.show(drama_params)
  end

  def destroy
    drama = Drama.find(params[:id])
    drama.destroy
  end

  def edit
    @drama = Drama.find(params[:id])
  end

  def update
    drama = Drama.find(params[:id])
    drama.update(drama_params)
  end

  def show
    @drama = Drama.find(params[:id])
  end

  private
  def drama_params
    params.require(:drama).permit(:name, :text, :image)
  end
end
