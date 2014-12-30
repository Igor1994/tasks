class AddAttachmentPictureToUserMessages < ActiveRecord::Migration
  def self.up
    change_table :user_messages do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :user_messages, :picture
  end
end
