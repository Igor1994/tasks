class PersonsController < ApplicationController

  before_action :set_page_number, only: [:profile]

  def profile

    @friendships = current_user.friendships
    @inverse_friendships = current_user.inverse_friendships

  end

  # def create
  # 	@message = UserMessage.new(message_params)

  # 	@message.save
    
  # end

  def update
    current_user.update(avatar_params)

    redirect_to :user_root
  end

  def avatar_update
    
  end

  def create_message

  end

  def change_page

    @user = current_user

    
    @user.page_number = @user.page_number + 1
    @user.save

  end

  def set_page_number

    current_user.page_number = 1
    current_user.save
    
  end

  private

    def avatar_params
      params.require(:avatar).permit(:avatar)
    end

  	def message_params
  		params.require(:message).permit(:text, :picture)
  	end
end
