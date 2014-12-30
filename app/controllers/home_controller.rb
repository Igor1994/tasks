class HomeController < ApplicationController
  def index
  	@messages = UserMessage.all
  	if user_signed_in?
  		@friends = current_user.friends
			@inverse_friends = current_user.inverse_friends
		end
  end
end
