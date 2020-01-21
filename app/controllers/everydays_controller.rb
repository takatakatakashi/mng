class EverydaysController < ApplicationController
  def index
    @everydays = Everyday.all
  end

  def new
    @everyday = Everyday.new
  end

  def create
    Everyday.create(everyday_params)
  end

  def show
    Everyday.show(everyday_params)
  end

  def destroy
    everyday = Everyday.find(params[:id])
    everyday.destroy
  end

  def edit
    @everyday = Everyday.find(params[:id])
  end

  def update
    everyday = Everyday.find(params[:id])
    everyday.update(evryday_params)
  end

  def show
    @everyday = Everyday.find(params[:id])
  end

  private
  def everyday_params
    params.require(:everyday).permit(:name, :text, :image)
  end
end
