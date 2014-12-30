class UsersController < ApplicationController
	def index
		@user = User.find(params[:id])
		@friends = current_user.friends
		@inverse_friends = current_user.inverse_friends

		if (@user == current_user)
			redirect_to '/persons/profile'
		end
		
		@messages = @user.user_messages
	end
end
