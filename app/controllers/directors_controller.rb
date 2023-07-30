class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/base"})
  end

  def wisest
    @oldest = Director.where.not({:dob => nil}).order(:dob => :asc).first.name
    @oldest_birth = Director.where.not({:dob => nil}).order(:dob => :asc).first.dob
    @oldest_id = Director.where.not({:dob => nil}).order(:dob => :asc).first.id
    render({:template => "director_templates/wisest"})
  end

  def youngest
    @youngest = Director.all.order(:dob => :asc).last.name
    @youngest_birth = Director.all.order(:dob => :asc).last.dob
    @youngest_id = Director.all.order(:dob => :asc).last.id
    render({:template => "director_templates/youngest"})
  end

  def background 
    @id = params.fetch(:director_id)
    @background_director = Director.where({:id => @id}).first
    
    render({:template => "director_templates/background"})
  end
end
