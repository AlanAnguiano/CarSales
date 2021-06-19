require 'rails_helper'

RSpec.describe DealershipController do
  before(:each) do
    admin = FactoryBot.create(:user)

    sign_in admin
  end

  describe 'GET #index' do
    context 'when logged in' do
      it 'should display all the dealerships' do
        get :index
        expect(response.status).to eq(200)
      end
    end

    context 'when logged out' do
      it 'should redirect to sign in' do
        sign_out subject.current_user
        get :index
        expect(response.status).to eq(302)
      end
    end
  end

  describe 'GET #new' do
    it 'create new dealership' do
      get :new
      expect(response.body).to include('create new dealership')
    end
  end

  describe 'GET #show' do
    let(:dealership) { FactoryBot.create(:dealership) }
    it 'show a dealership' do
      get :show, params: { id: dealership.id }
      expect(response.body).to include('here are no cars available')
    end
  end

  describe 'POST #create' do
    it 'create a new dealership' do
      expect { 
        post :create, params: { dealership: { name: 'dealership1' }}
      }.to change { Dealership.count }
      
      expect(response.status).to eq(302)
    end
  end
end
