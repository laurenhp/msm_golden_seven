class ActorController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def actors
    @list_of_actors = Actor.all

    render("movies/actors.html.erb")
  end

  def show
    @actor = Actor.find_by({ :id => params[:id]})
    render("movies/actor_show.html.erb")
  end

  def delete
    k = Actor.find_by(params[:id])
    k.destroy

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    @actor = Actor.find_by({ :id => params[:id]})
    render("movies/actor_edit_form.html.erb")
  end

  def update_row
    m = Actor.find_by({ :id => params[:id]})
    m.name = params[:name]
    m.dob = params[:dob]
    m.bio = params[:bio]
    m.image_url = params[:image_url]
    m.save
    @actor= Actor.find_by({ :id => params[:id]})

    redirect_to("http://localhost:3000/actors")
  end

  def new_actor
    render("movies/new_actor.html.erb")

  end

  def create_row
    p = Actor.new
    p.name = params[:name]
    p.dob = params[:dob]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/actors")
  end

end
