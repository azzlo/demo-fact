# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.first_or_create(email: 'admin@admin') do |user|
  user.email = 'admin@admin'
  user.password = '1234567890'
  user.password_confirmation = '1234567890'
  user.admin = true
  user.save!
end

User.where(email: 'user@user').first_or_create do |user|
  user.name = "Ferreteria-X"
  user.email = 'user@user'
  user.password = '1234567890'
  user.password_confirmation = '1234567890'
  user.admin = false
  user.save!
end