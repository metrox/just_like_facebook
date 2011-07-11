class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.integer :id_sender
      t.integer :id_owner
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
