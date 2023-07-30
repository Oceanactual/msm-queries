class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    Director.all
    render({ :template => "movie_templates/base"})
  end

  def background 
    @id = params.fetch(:movie_id)
    @background_movie = Movie.where({:id => @id}).first
    
    render({:template => "movie_templates/background"})
  end

end
