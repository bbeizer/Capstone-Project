require 'json'
gem 'activerecord-import'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#load up course info into our course DB
coursesfile = open("data/course.json")
coursesjson = coursesfile.read

parsed = JSON.parse(coursesjson)
puts parsed[0]["name"]

courses = []
columns = [:name, :code, :desc]

parsed.each do |course|
  puts course["name"]
  courses << {name: course["name"], code: course["code"], desc: course["description"]}
  
end

Course.import columns, courses, validate: false

#load up instructor info into our instructor DB
instructorsfile = open("data/instructor.json")
instructorsjson = instructorsfile.read

parsed = JSON.parse(instructorsjson)
puts parsed[0]["first"]

instructors = []
columns = [:first, :last, :email]


parsed.each do |instructor|
  puts instructor["first"]
  instructors << {first: instructor["first"], last: instructor["last"], email: instructor["email"]}
  
end

Instructor.import columns, instructors, validate: false
