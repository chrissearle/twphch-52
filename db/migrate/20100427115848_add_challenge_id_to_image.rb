class AddChallengeIdToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :challenge_id, :integer
  end

  def self.down
    remove_column :images, :challenge_id
  end
end
