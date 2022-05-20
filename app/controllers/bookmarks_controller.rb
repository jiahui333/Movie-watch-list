class BookmarksController < ApplicationController
def new
  @movies = Movie.all
  @bookmark = Bookmark.new
  @list = List.find(params[:list_id])
end

def create
  @list = List.find(params[:list_id])
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.list = @list
  @bookmark.movie = Movie.find(params["bookmark"][:movie_id])
  @bookmark.save
  redirect_to list_path(@list)
end

def destroy
  @bookmark = Bookmark.find(params[:id])
  @bookmark.destroy
  redirect_to list_path(params[:list_id])
end


private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
