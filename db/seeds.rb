# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

events = Event.order(:created_at).take(6)
25.times do
  email = Faker::Lorem.sentence(5)
  events.each { |event| event.attendees.create!(email: email) }
end
