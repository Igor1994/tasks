class FriendsController < ApplicationController

	def index

		@friends = current_user.friends.all
		@subscribers = current_user.inverse_friends.all

		# binding.pry
		
	end

	def accept_friendship

		current_user.friendships.create(friend_id: params[:id])

		redirect_to :back
		
	end

end
