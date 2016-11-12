# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Seeding Data...'

r = Role.create(
    name: 'admin'
)

# Temporary admin account
u = User.new(
    email: 'admin@example.com',
    first_name: 'System',
    last_name: 'Administrator',
    password: '123456'
)
u.roles << r
u.save!

# Temporary non-admin account
u = User.new(
    email: 'other@example.com',
    first_name: 'System',
    last_name: 'User',
    password: '123456'
)
u.save!