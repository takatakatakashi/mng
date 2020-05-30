class MangasController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @mangas = Manga.all.includes(:user).order("created_at DESC")
  end

  def new
    @manga = Manga.new
  end

  def create
    Manga.create(manga_params)
    # @manga = Manga.create(manga_params)
  end

  def show
    @manga = Manga.find(params[:id])
  end

  def destroy
    manga = Manga.find(params[:id])
    manga.destroy
  end

  def edit
    @manga = Manga.find(manga_params[:id])
  end

  def update
    manga = Manga.find(params[:id])
    manga.update(manga_params)
  end

  private
  def manga_params
    params.require(:manga).permit(:name, :text, :image, :tag_id).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
end
