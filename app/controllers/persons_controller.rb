class PersonsController < ApplicationController

  def profile
    @messages = current_user.user_messages
    @friendships = current_user.friendships
    @inverse_friends = current_user.inverse_friends
    # @mess = @messages.last
  end

  def create
  	@message = UserMessage.new(message_params)
    # @message.user_name = current_user.nickname

  	@message.save

    # redirect_to '/persons/profile'
    
  end

  def update
    current_user.update(avatar_params)

    redirect_to :user_root
  end

  def avatar_update
    
  end

  def create_message
  end

  private

    def avatar_params
      params.require(:avatar).permit(:avatar)
    end

  	def message_params
  		params.require(:message).permit(:text, :picture)
  	end
end
