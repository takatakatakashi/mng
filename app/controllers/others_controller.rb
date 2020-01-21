class OthersController < ApplicationController
  def index
    @others = Other.all
  end

  def new
    @other = Other.new
  end

  def create
    Other.create(other_params)
  end

  def show
    Other.show(other_params)
  end

  def destroy
    other = Other.find(params[:id])
    other.destroy
  end

  def edit
    @other = Other.find(params[:id])
  end

  def update
    other = Other.find(params[:id])
    other.update(other_params)
  end

  def show
    @other = Other.find(params[:id])
  end

  private
  def other_params
    params.require(:other).permit(:name, :text, :image)
  end
end
