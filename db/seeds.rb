# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Mentor.destroy_all
Mentee.destroy_all
User.destroy_all

# Create a user
user1 = User.create!({ email: "romeeweltevreden@hotmail.com",
        first_name: "Romee", last_name: "Weltevreden", location: "Amsterdam", password: "test123" })


user2 = User.create!(email: "test@hotmail.com",
        first_name: "Name", last_name: "Last_Name", location: "Amsterdam", password: "test321")

user3 = User.create!(email: "annakarsten@hotmail.com",
        first_name: "Anna", last_name: "Karsten", location: "Amsterdam", password: "TEST123")


# Create a mentor
mentor1 = Mentor.create!(job_title: "Software Developer", company: "le wagon", rating: 3, user: user2)
mentor2 = Mentor.create!(job_title: "Software Engineer", company: "le wagon", rating: 4, user: user3)

# mentor1.user = user1

# Create a mentee
mentee1 = Mentee.create!(goal: "I want to become a developer within 1 year", user: user1)
