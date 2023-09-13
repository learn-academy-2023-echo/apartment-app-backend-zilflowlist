user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")


user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

user1_apartments = [
    
    {
        street: "Test Lane",
        unit: "7",
        city: "San Deegleby",
        state: "CA",
        square_footage: 800,
        price: "3,500",
        bedrooms: 2,
        bathrooms: 1.5,
        pets: "yes",
        image: "https://plus.unsplash.com/premium_photo-1672252617539-878656f17efe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
    }
]

user2_apartments = [
    
    {
        street: "Laney test",
        unit: "7",
        city: "Sanny Doogs",
        state: "CA",
        square_footage: 650,
        price: "2,750",
        bedrooms: 2,
        bathrooms: 1.0,
        pets: "no",
        image: "https://plus.unsplash.com/premium_photo-1683769252575-e986af039184?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"
    }
]

user1_apartments.each do |apartment|
    user1.apartments.create(apartment)
    p "created: #{apartment}"
end

user2_apartments.each do |apartment|
    user2.apartments.create(apartment)
    p "created: #{apartment}"
end