class Like < ActiveRecord::Base
	belongs_to :liker , class_name: "User"
  belongs_to :liked_message , class_name: "UserMessage"
end
