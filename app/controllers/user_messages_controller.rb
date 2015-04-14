class UserMessagesController < ApplicationController

	def create

		@message = current_user.posted_messages.create(message_param)

	end

	def create_comment

		@commented_message_id = params[:commented_message_id]
    @comment = UserMessage.find(@commented_message_id).comments.new(comment_params)
    @comment.save

  end

  def show_comments
    
    @commented_message_id = params[:id]

    @comments = UserMessage.find(@commented_message_id).comments

  end

  def close_comments

    @commented_message_id = params[:commented_message_id]
    
  end

	private 
		def message_param
			params.require(:user_message).permit(:text, :picture, :user_id)
  	end

  	def comment_params
  		params.require(:comment).permit(:text, :picture, :poster_id)
  	end
end
