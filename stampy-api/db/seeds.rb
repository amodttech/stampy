# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



puts "seeding started....."

User.destroy_all
Collection.destroy_all
Stamp.destroy_all

puts "all previous seeds destroyed....."

aaron = User.create(
    first_name: "Aaron", 
    last_name: "Amodt", 
    email: "aaron@amodttech.com", 
    password_digest: BCrypt::Password.create('assword')
)

puts "user, Aaron Amodt, has been created....."

telecom = Collection.create(
    name: "Telecom",
    description: "A collection of international stamps commemorating submarine telecom cables.",
    user_id: aaron.id
)

puts "collection, Telecom, has been created....."

australia = Stamp.create(
    name: "Victoria to Tasmania",
    description: "Commemorating the opening of submarine telephone communication to Tasmania",
    year: 1936, 
    country: "Australia",
    subject: "submarine telecom",
    acquired: DateTime.new(2021, 12, 25),
    cancelled: false,
    collection_id: telecom.id
)

australia.image.attach(
    io: File.open('app/assets/images/Australia.jpg'),
    filename: 'australia.jpg'
)

puts ".....seeding ended."