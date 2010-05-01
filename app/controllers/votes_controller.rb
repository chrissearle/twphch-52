class VotesController < ApplicationController
  def new
    if params["img"].blank?
      flash[:error] = "Du må velge et bilde"
      redirect_to images_path
    end

    vote = Vote.find_by_photographer_flickr_id(session[:userid])

    flash[:notice] = "Din stemme er oppdatert"

    if vote.nil?
      vote = Vote.new

      flash[:notice] = "Takk for din stemme"
    end

    vote.image = Image.find(params["img"])
    vote.photographer_flickr_id = session[:userid]

    vote.save

    redirect_to images_path
  end
end
