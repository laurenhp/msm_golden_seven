class MovieController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def movies
    @list_of_movies = Movie.all

    render("movies/movies.html.erb")
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
    render("movies/movie_show.html.erb")
  end

  def delete
    k = Movie.find_by(params[:id])
    k.destroy

    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})
    render("movies/movie_edit_form.html.erb")
  end

  def update_row
    m = Movie.find_by({ :id => params[:id]})
    m.title = params[:title]
    m.year = params[:year]
    m.duration = params[:duration]
    m.description = params[:description]
    m.image_url = params[:image_url]
    m.save

    @movie= Movie.find_by({ :id => params[:id]})

    redirect_to("http://localhost:3000/movies")
  end

  def new_movie
    render("movies/new_movie.html.erb")

  end

  def create_row
    p = Movie.new
    p.title = params[:title]
    p.year = params[:year]
    p.duration = params[:duration]
    p.description = params[:description]
    p.image_url = params[:image_url]
    p.save

    redirect_to("http://localhost:3000/movies")
  end


end
