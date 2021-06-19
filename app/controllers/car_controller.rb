class CarController < ApplicationController
  before_action :validates_user_admin, only: [:new]

  def new
    @car = Car.new
  end

  def create
    dealership_id = params[:dealership_id]
    car_params = params.dig(:car)
    @dealership = Dealership.find(dealership_id)
    @dealership.cars.create!(name: car_params[:name],
                model: car_params[:model],
                brand: car_params[:brand],
                year: car_params[:year],
                price: car_params[:price].to_f,
                state: car_params[:state])
    redirect_to dealership_path(dealership_id)
  end

  def destroy
    dealership_id = params[:dealership_id]
    @dealership = Dealership.find(dealership_id)
    @car = @dealership.cars.find(params[:id])
    @car.destroy!
    redirect_to dealership_path(dealership_id)
  end
end
