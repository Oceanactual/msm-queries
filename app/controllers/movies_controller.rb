class MoviesController < ApplicationController

  def index
    
    render({ :template => "movie_templates/base"})
  end

end
