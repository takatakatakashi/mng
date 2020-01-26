class TagsController < ApplicationController

  def show
    @mangas = Manga.where(tag_id: params[:id])
  end

end
