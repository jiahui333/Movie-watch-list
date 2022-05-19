class ListsController < ApplicationController
  # before_action :set_task, only: [ :show, :edit, :update, :destroy ]

  def index
    @lists = List.all
  end

  # def show
  #   # @bookmarks = Bookmark.all
  # end

  # def new
  #   @list = List.new
  # end

  # def create
  #   @movie = Movie.new(movie_params)
  #   @movie.save
  #   redirect_to lists_path
  # end

  # def destroy
  #   @movie = Movie.find(params[:id])
  #   @movie.destroy
  #   redirect_to lists_path
  # end

  # private

  # # def set_task
  # #   @task = Task.find(params[:id])
  # # end

  # def movie_params
  #   params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  # end
  # end
end
