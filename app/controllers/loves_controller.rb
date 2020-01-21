class LovesController < ApplicationController
  def index
    @loves = Love.all
  end

  def new
    @love = Love.new
  end

  def create
    Love.create(love_params)
  end

  def show
    Love.show(love_params)
  end

  def destroy
    love = Love.find(params[:id])
    love.destroy
  end

  def edit
    @love = Love.find(params[:id])
  end

  def update
    love = Love.find(params[:id])
    love.update(love_params)
  end

  def show
    @love = Love.find(params[:id])
  end

  private
  def love_params
    params.require(:love).permit(:name, :text, :image)
  end
end
