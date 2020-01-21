class YankeesController < ApplicationController
  def index
    @yankees = Yankee.all
  end

  def new
    @yankee = Yankee.new
  end

  def create
    Yankee.create(yankee_params)
  end

  def show
    Yankee.show(yankee_params)
  end

  def destroy
    yankee = Yankee.find(params[:id])
    yankee.destroy
  end

  def edit
    @yankee = Yankee.find(params[:id])
  end

  def update
    yankee = Yankee.find(params[:id])
    yankee.update(yankee_params)
  end

  def show
    @yankee = Yankee.find(params[:id])
  end

  private
  def yankee_params
    params.require(:yankee).permit(:name, :text, :image)
  end
end
