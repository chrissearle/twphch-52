class Image < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :photographer
  has_many :votes
  
  attr_accessible :flickr_id, :image_url, :image_large_url, :title, :challenge, :photographer, :image

  def self.find_all_sorted_by_challenge
    find(:all, :include => [:photographer, :challenge]).sort_by{|i| i.challenge.tag.downcase}
  end
end
