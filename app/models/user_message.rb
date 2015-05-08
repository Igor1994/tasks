class UserMessage < ActiveRecord::Base

		include SimpleHashtag::Hashtaggable
  	hashtaggable_attribute :text

    has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

    do_not_validate_attachment_file_type :picture

    belongs_to :user
    belongs_to :poster , class_name: "User", primary_key: :id

    has_many :likes, foreign_key: :liked_message_id
  	has_many :likers, through: :likes

  	has_many :comments, class_name: "UserMessage", foreign_key: :commented_message_id
  	belongs_to :commented_message, class_name: "UserMessage"

    belongs_to :group
end
