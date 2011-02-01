# coding: UTF-8

class CreatePhotographers < ActiveRecord::Migration
  def self.up
    create_table :photographers do |t|
      t.string :flickr_id
      t.string :username
      t.string :fullname

      t.timestamps
    end
  end

  def self.down
    drop_table :photographers
  end
end
