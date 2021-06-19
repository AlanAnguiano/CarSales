require 'rails_helper'

RSpec.describe CarController do
  let(:admin) { FactoryBot.create(:user) }
  let(:dealership) { FactoryBot.create(:dealership) }
  let(:car_params) { FactoryBot.attributes_for(:car, dealership_id: dealership.id) }
  let!(:car) { FactoryBot.create(:car, dealership_id: dealership.id) }
  before(:each) do
    sign_in admin
  end

  describe 'GET #new' do
    it 'creates a car instance' do
      get :new, params: { dealership_id: dealership.id }
      expect(response.status).to eq(200)
      expect(response.body).to include('Add new car')
    end
  end

  describe 'POST #create' do
    it 'should create a new car' do
      expect { 
        post :create, params: {
                      dealership_id: dealership.id,
                      car: car_params }
    }.to change { Car.count }

      expect(response.status).to eq(302)
    end
  end

  describe 'DELETE #destroy' do
    it 'should destroy a car' do
      expect {
        delete :destroy, params: {
                      dealership_id: dealership.id,
                      id: car.id }
      }.to change { Car.count }

      expect(response.status).to eq(302)
    end
  end
end