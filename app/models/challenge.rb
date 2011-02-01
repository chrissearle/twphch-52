# coding: UTF-8

class Challenge < ActiveRecord::Base
  has_many :images

  attr_accessible :tag, :title, :images  
end
