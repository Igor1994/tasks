class UserSearchController < ApplicationController
  
  def index

  end

  def create
  	
  	# @param = search_param

 		@searched_user = User.where("nickname = ?", search_param[:search_field])

  	if @searched_user.first

  		redirect_to "/users/index/#{@searched_user.first.id}"

  	else 

  		redirect_to '/user_search/index'

  	end

  end

	private 
		def search_param
			params.require(:user_search).permit(:search_field)
  	end

end
