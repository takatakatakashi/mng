class MangasController < ApplicationController

  def index
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.create(manga_params)
  end

  def show
    
  end


  private
  def manga_params
    params.require(:manga).permit(:name, :text, :image, :tag)
  end
end
