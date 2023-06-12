class ComicsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_comic, except: [:index, :new, :create]
  def index
    @comics = Comic.order("created_at DESC")
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

  def show
  end

  def edit
    if current_user != @comic.user
      redirect_to root_path
    end
  end

  def update
    @comic.update(comic_params)
    if @comic.update(comic_params)
      redirect_to comic_path(@comic)
    else
      render :edit
    end
  end

  def destroy
    if user_signed_in? && current_user == @comic.user
      @comic.destroy
    end
    if @comic.destroy
      redirect_to root_path
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :author, :illustrator, :genre_id, :magazine_id, :decade_id, :publisher, :publication, :impression, :image).merge(user_id: current_user.id)
  end

  def set_comic
    @comic = Comic.find(params[:id])
  end
end