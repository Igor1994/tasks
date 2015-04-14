class FriendshipsController < ApplicationController

	def create
		@friendship = current_user.friendships.new(friend_id: params[:friend_id])

		@friendship.save

		redirect_to :back
	end

	def destroy
		@friendship = Friendship.find(params[:id])
		@friendship.destroy

		redirect_to :back
	end
end
