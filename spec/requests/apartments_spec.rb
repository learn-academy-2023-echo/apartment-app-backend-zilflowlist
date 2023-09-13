require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  describe "GET /index" do
    it 'gets a list of apartments' do
      apartment = user.apartments.create(
        street: 'Test Lane',
        unit: '7',
        city: 'San Deegleby',
        state: 'CA',
        square_footage: 800,
        price: '3,500',
        bedrooms: 2,
        bathrooms: 1.5,
        pets: 'yes',
        image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
      )
      get '/apartments'

      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.first['street']).to eq('Test Lane')
    end
  end

  describe "POST /create" do
    it 'creates a new apartment listing' do
      apartment_params = {
      apartment: {
        street: 'Test Lane',
        unit: '7',
        city: 'San Deegleby',
        state: 'CA',
        square_footage: 800,
        price: '3,500',
        bedrooms: 2,
        bathrooms: 1.5,
        pets: 'yes',
        image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
        user_id: user.id
    }
  }
      post '/apartments', params: apartment_params
      
      expect(response).to have_http_status(200)

    apartment = Apartment.first
    expect(apartment.street).to eq 'Test Lane' 
    expect(apartment.unit).to eq '7' 
    expect(apartment.city).to eq 'San Deegleby' 
    expect(apartment.state).to eq 'CA' 
    expect(apartment.square_footage).to eq 800 
    expect(apartment.price).to eq '3,500' 
    expect(apartment.bedrooms).to eq 2 
    expect(apartment.bathrooms).to eq 1.5
    expect(apartment.pets).to eq 'yes' 
    expect(apartment.image).to eq 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    expect(apartment.user_id).to eq user.id 
    end
  end
end
