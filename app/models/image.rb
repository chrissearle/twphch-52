class Image < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :photographer
  
  attr_accessible :flickr_id, :image_url, :image_large_url, :title, :challenge, :photographer, :image
end
