class ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
  end

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    if @comic.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :author, :illustrator, :genre_id, :magazine_id, :decade_id, :publisher, :publication, :impression, :image).merge(user_id: current_user.id)
  end
end