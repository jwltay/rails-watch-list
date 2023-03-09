class MoviesController < ApplicationController
  # before_action :set_movie
  def index
    @movies = Movie.all
  end
end
