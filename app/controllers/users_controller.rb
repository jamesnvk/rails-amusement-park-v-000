class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
     session[:user_id] = @user.id
     redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def update
    user = User.find_by(id: session[:user_id])
     # user.take_ride
     # user.save
    redirect_to user_path(user)
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    session[:user_id] = @user.id
  end

  private

  def user_params
    params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :admin)
  end
end
