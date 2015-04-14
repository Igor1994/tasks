class SearchesController < ApplicationController
  
  def index



  end

  def show
  	
    if searched_params[:text] != "" 
  	 @users = User.where("nickname LIKE ?", searched_params[:text]+'%')
    else
      @users = User.first(5)
    end

  end

  private 

  	def searched_params

  		params.require(:search).permit(:text)

  	end

end
