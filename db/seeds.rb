# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

User.delete_all

User.create name: 'Alan Andrade', email: 'alan.andradec@gmail.com', password: 'guG@llo', password_confirmation: 'guG@llo'

CSV.foreach 'db/first-round-users.csv' do |row|
  User.create name: 'unnamed', email: row.first, password: row.last , password_confirmation: row.last
end
