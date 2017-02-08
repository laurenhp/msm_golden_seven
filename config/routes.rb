Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#Edit director
get("/directors/:id/edit", { :controller =>"application", :action => "edit_form"})
get("/update_director/:id", { :controller => "application", :action => "update_row" })

#Add director
get("/directors/new", { :controller =>"application", :action => "new_director"})
get("/create_director", { :controller=> "application", :action => "create_row"})

#Shows directors
get("/directors/:id", { :controller =>"application", :action => "show"})
get("/directors", { :controller =>"application", :action => "directors"})

#Delete director
get("/delete_director/:id", { :controller =>"application", :action =>"delete"})



#Edit actor
get("/actors/:id/edit", { :controller =>"actor", :action => "edit_form"})
get("/update_actor/:id", { :controller => "actor", :action => "update_row" })

#Add director
get("/actors/new", { :controller =>"actor", :action => "new_actor"})
get("/create_actor", { :controller=> "actor", :action => "create_row"})

#Shows directors
get("/actors/:id", { :controller =>"actor", :action => "show"})
get("/actors", { :controller =>"actor", :action => "actors"})

#Delete director
get("/delete_actor/:id", { :controller =>"actor", :action =>"delete"})



#Edit movie
get("/movies/:id/edit", { :controller =>"movie", :action => "edit_form"})
get("/update_movie/:id", { :controller => "movie", :action => "update_row" })

#Add movie
get("/movies/new", { :controller =>"movie", :action => "new_movie"})
get("/create_movie", { :controller=> "movie", :action => "create_row"})

#Shows movies
get("/movies/:id", { :controller =>"movie", :action => "show"})
get("/movies", { :controller =>"movie", :action => "movies"})

#Delete movie
get("/delete_movie/:id", { :controller =>"movie", :action =>"delete"})






end
