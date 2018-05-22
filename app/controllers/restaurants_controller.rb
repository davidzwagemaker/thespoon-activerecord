class RestaurantsController < ApplicationController
  before_action :fetch_restaurant, except: [:index, :new, :create]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path
  end

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # raise
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def fetch_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # strong parameters
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :food_type, :rating)
  end
end
