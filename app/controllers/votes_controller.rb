class VotesController < ApplicationController
  def new
    if params["img"].blank?
      flash[:error] = "Du må velge et bilde"
      redirect_to images_path
    end

    @vote = Vote.new
    @vote.image = Image.find(params["img"])
  end

  def create
    @vote = Vote.new(params[:vote])

    if @vote.save
      flash[:notice] = 'Takk for din stemme.'
      redirect_to images_path
    else
      render :action => "new"
    end
  end
end
