class SessionsController < ApplicationController

  def create
  if  auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by_omniauth(auth_hash)
    session[:user_id] = user.id
    redirect_to root_path

  # else
  #   user = User.find_by(:email => params[:user][:email])
  #   if user && user.authenticate(params[:user][:password])
  #     session[:user_id] = user.id
  #     redirect_to root_path
  #   else
  #     render "sessions/new"
    end
  end
end
#end
