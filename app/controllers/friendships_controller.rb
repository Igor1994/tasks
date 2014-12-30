class FriendshipsController < ApplicationController

	def create
		@friendship = current_user.friendships.new(friend_id: params[:friend_id])

		@friendship.save

		redirect_to :user_root
	end

	def destroy
		@friendship = current_user.friendships.find(params[:id])
		@friendship.destroy

		redirect_to :user_root
	end
end
