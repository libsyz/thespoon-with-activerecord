class RestaurantsController < ApplicationController
  def index
    # get all the restos from the db
    @restaurants = Restaurant.all
  end

  def show
    session[:user] = '90'
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end
