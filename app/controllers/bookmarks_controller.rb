class BookmarksController < ApplicationController
  before_action :set_bookmark_and_list

  def new
  end

  def create
    @movie = Movie.find(bookmark_params[:movie_id])
    bookmark = Bookmark.new(movie: @movie, comment: bookmark_params[:comment], list: @list)
    if bookmark.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_bookmark_and_list
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
