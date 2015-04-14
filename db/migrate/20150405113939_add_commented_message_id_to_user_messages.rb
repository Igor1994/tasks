class AddCommentedMessageIdToUserMessages < ActiveRecord::Migration
  def change
  	add_column :user_messages, :commented_message_id, :integer, index: true
  end
end
