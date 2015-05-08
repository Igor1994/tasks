class AddGroupIdToUserMessages < ActiveRecord::Migration
  def change
  	add_column :user_messages, :group_id, :integer
  end
end
