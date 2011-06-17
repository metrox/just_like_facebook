class CreateFriendlists < ActiveRecord::Migration
  def self.up
    create_table :friendlists do |t|
      t.integer :id_user
      t.integer :id_friend
      t.boolean :user_approved
      t.boolean :friend_approved

      t.timestamps
    end
  end

  def self.down
    drop_table :friendlists
  end
end
