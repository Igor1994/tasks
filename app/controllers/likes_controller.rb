class LikesController < ApplicationController

	def create
		@like = current_user.likes.new(liked_message_id: params[:id])

		@like.save
		
		# redirect_to :back
	end

	def destroy
		@like = current_user.likes.where('liked_message_id = ?', params[:id])

		@like.first.destroy

		# redirect_to :back
	end

end
