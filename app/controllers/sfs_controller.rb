class SfsController < ApplicationController
  def index
    @sfs = Sf.all
  end

  def new
    @sf = Sf.new
  end

  def create
    Sf.create(sf_params)
  end

  def show
    Sf.show(sf_params)
  end

  def destroy
    sf = Sf.find(params[:id])
    sf.destroy
  end

  def edit
    @sf = Sf.find(params[:id])
  end

  def update
    sf = Sf.find(params[:id])
    sf.update(sf_params)
  end

  def show
    @sf = Sf.find(params[:id])
  end

  private
  def sf_params
    params.require(:sf).permit(:name, :text, :image)
  end
end
