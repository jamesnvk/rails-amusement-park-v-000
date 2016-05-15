class SessionsController < ApplicationController
  def new
    @users = User.all
  end

  def create
    user = User.find_by_id(params[:user][:id])
    session[:user_id] = params[:user][:id]
    redirect_to user
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
