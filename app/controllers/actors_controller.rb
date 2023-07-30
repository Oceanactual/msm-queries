class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/base"})
  end

  def background 
    @id = params.fetch(:actor_id)
    @background_actor = Actor.where({:id => @id}).first
    render({:template => "actor_templates/background"})
  end

end
