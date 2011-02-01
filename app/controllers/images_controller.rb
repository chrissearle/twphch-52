# coding: UTF-8

class ImagesController < ApplicationController
  def index
    @images = Image.find_all_sorted_relevant
  end
end
