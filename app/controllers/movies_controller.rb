class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to restaurant_path(@movie)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
