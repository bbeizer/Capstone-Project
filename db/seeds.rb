require 'json'
require 'faker'
gem 'activerecord-import'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


students = []
columns = [:name]

for a in 1..50 do
     
  students << {name: Faker::Name.name}
   
end

Students.import columns, students, validate: false

#load up instructor info into our instructor DB

alumni = []
columns = [:name]

for a in 1..50 do
     
  alumni << {name: Faker::Name.name}
   
end

Alumni.import columns, alumni, validate: false
