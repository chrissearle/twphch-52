class CreateChallenges < ActiveRecord::Migration
  def self.up
    create_table :challenges do |t|
      t.string :tag
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :challenges
  end
end
