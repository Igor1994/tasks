class GroupMembershipsController < ApplicationController

	def create

		@membership = current_user.group_memberships.create(joined_in_group_id: params[:id])

    redirect_to :back
		
	end

	def destroy

		@membership = GroupMembership.where("member_id = ? AND joined_in_group_id = ?", current_user.id, params[:id])

		@membership.first.destroy

		redirect_to :back
		
	end

end