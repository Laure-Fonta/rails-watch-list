class BookmarksController < ApplicationController
  def index
    @bookmark = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find_by_id(params[:id])
  end



  def new
    # @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.movie = @movie
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
