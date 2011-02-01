# coding: UTF-8

class AddImagePageToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :image, :string
  end

  def self.down
    remove_column :images, :image
  end
end
