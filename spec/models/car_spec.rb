require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:dealership) { FactoryBot.create(:dealership) }
  let(:car) { FactoryBot.create(:car, dealership_id: dealership.id) }

  it "should belong dealership" do
    expect(car.dealership_id).to eq(dealership.id)
  end
end
