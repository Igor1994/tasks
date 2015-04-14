class GroupsController < ApplicationController
 
  def index

  	@groups = current_user.hosted_groups
    @joinedInGroups = current_user.joined_in_groups

  end

  def create_new
  	


  end

  def create

  	@createdGroup = current_user.hosted_groups.create(group_params)

  	redirect_to '/groups/index'

  end

  def show

    @group = Group.find(params[:id])
    
  end

  def search_groups



  end

  def search

    if searched_params[:text] != "" 

     @groups = Group.where("name LIKE ?", searched_params[:text]+'%')

    else

      @groups = Group.first(5)

    end
    
  end


  private

  	def group_params
  		
  		params.require(:group).permit(:name, :description)

  	end

    def searched_params

      params.require(:search).permit(:text)

    end

end
