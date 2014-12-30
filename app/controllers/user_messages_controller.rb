class UserMessagesController < ApplicationController

	def create

		@message = current_user.posted_messages.create(message_param)

	end

	private 
		def message_param
			params.require(:user_message).permit(:text, :picture, :user_id)
  	end
end
