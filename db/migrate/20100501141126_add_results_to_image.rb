class AddResultsToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :rank, :integer, :default => 0
    add_column :images, :votecount, :integer, :default => 0
  end

  def self.down
    remove_column :images, :rank
    remove_column :images, :votecount
  end
end
