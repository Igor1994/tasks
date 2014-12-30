class AddUserIdToMessages < ActiveRecord::Migration
  def change
  	add_column :user_messages, :user_id, :integer, index: true 
  end
end
