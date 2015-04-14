class ImagesController < ApplicationController
  def index
  	@message = UserMessage.find(params[:id])
  end
end
