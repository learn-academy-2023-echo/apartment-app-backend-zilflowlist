require 'rails_helper'

RSpec.describe Apartment, type: :model do
  let(:user) { User.create(
    email: 'test1@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should validate street' do
    apartment = user.apartments.create(
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
    expect(apartment.errors[:street]).to include("can't be blank")
  end

  it 'should validate unit' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:unit]).to include("can't be blank")
  end

  it 'should validate city' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:city]).to include("can't be blank")
  end

  it 'should validate state' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:state]).to include("can't be blank")
  end

  it 'should validate square footage' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:square_footage]).to include("can't be blank")
  end

  it 'should validate price' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:price]).to include("can't be blank")
  end

  it 'should validate bedrooms' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bathrooms: 1.5,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:bedrooms]).to include("can't be blank")
  end

  it 'should validate bathrooms' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      pets: 'yes',
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:bathrooms]).to include("can't be blank")
  end

  it 'should validate pets' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      image: 'https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'
    )
    expect(apartment.errors[:pets]).to include("can't be blank")
  end

  it 'should validate image' do
    apartment = user.apartments.create(
      street: 'Test Lane',
      unit: '7',
      city: 'San Deegleby',
      state: 'CA',
      square_footage: 800,
      price: '3,500',
      bedrooms: 2,
      bathrooms: 1.5,
      pets: 'yes'
    )
    expect(apartment.errors[:image]).to include("can't be blank")
  end

end