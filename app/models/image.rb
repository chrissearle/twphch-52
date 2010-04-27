class Image < ActiveRecord::Base
  belongs_to :challenge
  
  attr_accessible :flickr_id, :image_url, :image_large_url, :title, :challenge
end
