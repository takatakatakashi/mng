class AgesController < ApplicationController
  def index
    @ages = Age.all
  end

  def new
    @age = Age.new
  end

  def create
    Age.create(age_params)
  end

  def show
    Age.show(age_params)
  end

  def destroy
    age = Age.find(params[:id])
    age.destroy
  end

  def edit
    @age = Age.find(params[:id])
  end

  def update
    age = Age.find(params[:id])
    age.update(age_params)
  end

  def show
    @age = Age.find(params[:id])
  end

  private
  def age_params
    params.require(:age).permit(:name, :text, :image)
  end
end
