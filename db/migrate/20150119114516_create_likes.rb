class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :liker_id
      t.integer :liked_message_id

      t.timestamps
    end
  end
end
