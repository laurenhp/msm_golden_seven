class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def directors
  @list_of_directors = Director.all

  render("movies/directors.html.erb")
end

def show
  @director = Director.find_by({ :id => params[:id]})
  render("movies/show.html.erb")
end

def delete
  k = Director.find_by(params[:id])
  k.destroy

  redirect_to("http://localhost:3000/directors")
end

def edit_form
  @director = Director.find_by({ :id => params[:id]})
  render("movies/edit_form.html.erb")
end

def update_row
  m = Director.find_by({ :id => params[:id]})
  m.name = params[:name]
  m.dob = params[:dob]
  m.bio = params[:bio]
  m.image_url = params[:image_url]
  m.save
  @director= Director.find_by({ :id => params[:id]})

  redirect_to("http://localhost:3000/directors")
end

def new_director
  render("movies/new_director.html.erb")

end

def create_row
  p = Director.new
  p.name = params[:name]
  p.dob = params[:dob]
  p.bio = params[:bio]
  p.image_url = params[:image_url]
  p.save

  redirect_to("http://localhost:3000/directors")
end

end
