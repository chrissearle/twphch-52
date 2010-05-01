class Image < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :photographer
  has_many :votes

  attr_accessible :flickr_id, :image_url, :image_large_url, :title, :challenge, :photographer, :image, :rank, :votecount

  def self.find_all_sorted_relevant
    find(:all, :include => [:photographer, :challenge]).sort_by do |i|
      if ENV.has_key?("RESULTS")
        i.rank
      else
        i.challenge.tag.downcase
      end
    end
  end
end
