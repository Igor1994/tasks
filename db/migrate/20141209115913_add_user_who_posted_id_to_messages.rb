class AddUserWhoPostedIdToMessages < ActiveRecord::Migration
  def change
  	add_column :user_messages, :poster_id, :integer, index: true
  end
end
