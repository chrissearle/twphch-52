class Challenge < ActiveRecord::Base
  has_many :images

  attr_accessible :tag, :title, :images  
end
