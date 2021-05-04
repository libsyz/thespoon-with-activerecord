class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :destroy, :update, :edit]

  def index
    # get all the restos from the db
    @restaurants = Restaurant.all
  end
end
