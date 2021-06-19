require 'rails_helper'

RSpec.describe Dealership, type: :model do
  let(:dealership) { FactoryBot.create(:dealership) }
  let!(:car) { FactoryBot.create(:car, dealership_id: dealership.id) }
  let!(:car2) { FactoryBot.create(:car, dealership_id: dealership.id) }

  it "should have many cars" do
    expect(dealership.cars.first).to eq(car)
    expect(dealership.cars.count).to eq(2)
  end
end
