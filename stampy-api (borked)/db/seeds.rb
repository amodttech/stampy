# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# stamps
# title:string country:references year:references subject:references description:text date_obtained:datetime

# countries
# name:string

# years
# year:integer

# subject
# subject:string
require 'pry'

Country.destroy_all
Year.destroy_all
Subject.destroy_all
Stamp.destroy_all

puts "all records destroyed"

# countries_list = ["Japan", "Thailand", "India", "Fiji", "Iceland", "Australia", "Korea", "China", "USA"]
# years_list = [1958, 1980, 1981, 1962, 1995, 1976, 1936, ]
# subject_list = ["submarine cable", "geology", "cosmos"]

year1980 = Year.create(year: 1980)
countryKorea = Country.create(name: "Korea")
subjectSubmarine = Subject.create(subject: "submarine cable")

# binding.pry

korea1980 = Stamp.create!(title: "Korean Cable Commemoration", year_id: year1980.id, country_id: countryKorea.id, subject_id: subjectSubmarine.id, description: "cool korean cable stamp")

puts "cool korean stamp created!"