class DealershipController < ApplicationController
  before_action :validates_user_admin, only: [:new]
  
  def index
    @dealerships = Dealership.all
  end

  def new
    @dealership = Dealership.new
  end

  def show
    @dealership = Dealership.find(params[:id])
  end

  def create
    @dealership = Dealership.create!(name: params.dig(:dealership, :name))
    redirect_to dealership_index_path
  end
end
