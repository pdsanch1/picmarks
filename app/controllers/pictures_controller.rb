class PicturesController < ApplicationController
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    # render :status => 302, :location => '/pictures'
    redirect_to '/pictures'
  end
  
  # Support /pictures?width=40&color=green
  # and make the view use the values in the url.
  def index
    @pictures = Picture.all 
    @width = params["width"]
    @color = params["color"]
  end
  
  
  def show
    @picture = Picture.find_by_id(params["id"])
  end

  
  
end
