# coding: UTF-8

class Vote < ActiveRecord::Base
  belongs_to :image

  validates_presence_of :photographer_flickr_id, :message => 'Flickr ID må fylles ut'
  validates_uniqueness_of :photographer_flickr_id, :message => 'Denne Flickr ID har allerede stemt'
end
