class PagesController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def index
    if params[:address]
      session[:address] = params[:address]
      session[:distance] = params[:distance]
      redirect_to posts_path
    elsif !session[:address]
      @address = request.location
      if @address.include? "Geocoder"
        #default address to get around testing environment
        @address = "608 Harris St, Sydney"
      else
        session[:address] = @address
        session[:distance] = 5
      end
    end
    session[:latitude] = Geocoder.search(session[:address])[0].latitude
    session[:longitude] = Geocoder.search(session[:address])[0].longitude
  end
end
