class HomeController < ApplicationController
  def index
  	
  	@users = User.all
  	@messages = UserMessage.all
    
  	if user_signed_in?
  		@friends = current_user.friends
			@inverse_friends = current_user.inverse_friends
		end

  end

  def cosmo_home
  	
  end

  def menu

  end
end
