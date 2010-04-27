class Photographer < ActiveRecord::Base
  has_many :images

  attr_accessible :flickr_id, :fullname, :username, :images
end
