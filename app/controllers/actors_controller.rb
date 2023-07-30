class ActorsController < ApplicationController

  def index
    
    render({ :template => "actor_templates/base"})
  end

end
