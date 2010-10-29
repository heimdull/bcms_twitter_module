class CreateTimelines < ActiveRecord::Migration
  def self.up
    create_table :timelines do |t|
      t.string :username
      t.datetime :expires_at
      
      t.timestamps
    end
  end

  def self.down
    drop_table :timelines
  end
end
