# coding: UTF-8

class AddPhotographerToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :photographer_id, :integer
  end

  def self.down
    remove_column :images, :photographer_id
  end
end
