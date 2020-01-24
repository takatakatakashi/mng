class MangasController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @mangas = Manga.all
  end

  def new
    @manga = Manga.new
  end

  def create
    @manga = Manga.create(manga_params)
  end

  def show

  end

  def destroy
    manga = Manga.find(params[:id])
    manga.destroy
  end

  def edit
    @manga = Manga.find(params[:id])
  end

  def update
    manga = Manga.find(params[:id])
    manga.update(manga_params)
  end

  private
  def manga_params
    params.require(:manga).permit(:name, :text, :image, :tag_id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
