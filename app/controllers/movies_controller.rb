class MoviesController < ApplicationController
  before_action :set_movie

  def index
    @movies = Movie.all
  end

  def show
    @movie
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
