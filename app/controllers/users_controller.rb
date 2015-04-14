class UsersController < ApplicationController
	
	before_action :set_first_page, only: [:index]

	def index
		@user = User.find(params[:id])
		@friends = current_user.friends
		@inverse_friends = current_user.inverse_friends

		if (@user == current_user)
			redirect_to '/persons/profile'
		end
		
		@messages = @user.user_messages.reverse_order

	end

	def change_page

		@page = Page.first
		@page.number += 1

		@page.save

		@messages = User.find(params[:id]).user_messages.reverse_order

	end

	def set_first_page
		
		@page = Page.first

		if @page != nil

			@page.update(number: 1)

		else 

			@page = Page.create(number: 1)

		end

	end

end
