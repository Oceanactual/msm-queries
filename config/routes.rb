Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {:controller => "directors", :action =>"index"})
  get("/directors/eldest", {:controller => "directors", :action =>"wisest"})
  get("/directors/youngest", {:controller => "directors", :action =>"youngest"})
  get("/directors/:director_id", {:controller => "directors", :action =>"background"})
  get("/actors", {:controller => "actors", :action =>"index"})
  get("/actors/:actor_id", {:controller => "actors", :action =>"background"})
  get("/characters", {:controller => "characters", :action =>"index"})
  get("/movies", {:controller => "movies", :action =>"index"})
  get("/movies/:movie_id", {:controller => "movies", :action =>"background"})
end
