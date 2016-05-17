class RidesController < ApplicationController
  def new
  end

  def create
    attraction = Attraction.find_by(id: session[:attraction_id])
    user = User.find_by(id: session[:user_id])
    ride = Ride.create(user_id: user.id, attraction_id: attraction.id)
    ride_message = ride.take_ride
    flash[:notice] = ride_message
    redirect_to user
  end
end


