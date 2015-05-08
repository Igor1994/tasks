class SessionsController < ApplicationController
	def create
    user = User.from_omniauth(env["omniauth.auth"])
    sign_in(:user, user)
    redirect_to "/persons/profile"
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end
end
