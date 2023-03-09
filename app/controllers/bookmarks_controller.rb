class BookmarksController < ApplicationController
  before_action :set_bookmark_and_list

  def new
    @movies = Movie.all
  end

  def create
    @movies = Movie.all
    @movie = Movie.first
    bookmark = Bookmark.new(movie:, list:)
    bookmark.list = @list
    if @list.save
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
    params.require(:bookmark).permit(:movie, :comment)
  end
end
