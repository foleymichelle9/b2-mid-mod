class StudiosController < ApplicationController

  def index
    @studios = Studio.all
    @studio = Studio.find(params[:id])
    @movie = Movie.find(@studio.movie_id)
  end
end
