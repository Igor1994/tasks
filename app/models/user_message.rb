class UserMessage < ActiveRecord::Base

    has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }

    do_not_validate_attachment_file_type :picture

    belongs_to :user
    belongs_to :poster , class_name: "User", primary_key: :id
end
