class ProfessionsController < ApplicationController
  def index
    @professions = Profession.all
  end

  def new
    @profession = Profession.new
  end

  def create
    Profession.create(profession_params)
  end

  def show
    Profession.show(profession_params)
  end

  def destroy
    profession = Profession.find(params[:id])
    profession.destroy
  end

  def edit
    @profession = Profession.find(params[:id])
  end

  def update
    profession = Profession.find(params[:id])
    profession.update(profession_params)
  end

  def show
    @profession = Profession.find(params[:id])
  end

  private
  def profession_params
    params.require(:profession).permit(:name, :text, :image)
  end
end
