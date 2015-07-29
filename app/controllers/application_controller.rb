class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def show
    @movie = Movie.find_by_id(params["id"])
    if @movie == nil
      redirect_to "/nothing"
    end
  end
  
  def new
  end
  
  def create 
    m = Movie.new
    m.img=params["img"]
    m.link = params["link"]
    m.save
    redirect_to "/movie/#{ m.id }"
  end
  
  def index
    @movies = Movie.all
  end
  
  def edit
    @movie = Movie.find_by_id(params["id"])
  end
  
  def edit_mov
    m = Movie.find_by_id(params["id"])
    if params["img"] != ""
      m.img = params["img"]
    end
    if params["link"] != ""
      m.link = params["link"]
    end
    m.save
    redirect_to "/movie/#{ m.id }"
  end
  
  def destroy
    m = Movie.find_by_id(params["id"])
    m.destroy
    redirect_to "/nothing"
  end
  
  def naught
  end
  
end
