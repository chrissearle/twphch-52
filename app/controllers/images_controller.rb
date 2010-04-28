class ImagesController < ApplicationController
  def index
    @images = Image.find_all_sorted_by_challenge
  end
end
