class BookmarksController < ApplicationController
def index
  @bookmarks = Bookmark.all
end

def new
  @movies = Movie.all
  @bookmark = Bookmark.new
  @list = List.find(params[:list_id])
end

def create
  @bookmark = Bookmark.new(bookmark_params)
  @bookmark.save
end


private
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
