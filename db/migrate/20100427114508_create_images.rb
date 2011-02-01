# coding: UTF-8

class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :flickr_id
      t.string :image_url
      t.string :image_large_url
      t.string :title
      t.timestamps
    end
  end
  
  def self.down
    drop_table :images
  end
end
