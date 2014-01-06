# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

DEFAULT_INSECURE_PASSWORD = 'password'

User.create({
  first_name: "Michael",
  last_name: "Morales",
  profile_name: "djmike",
  email: "morales_michael@fastmail.fm",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Virginia",
  last_name: "Morales",
  profile_name: "jen",
  email: "vmorales12@yahoo.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Gabby",
  last_name: "Morales",
  profile_name: "gabby",
  email: "morales_gabriela@yahoo.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Ali",
  last_name: "Morales",
  profile_name: "Ali",
  email: "aliciam750@yahoo.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

User.create({
  first_name: "Maria",
  last_name: "Villarreal",
  profile_name: "Maria",
  email: "jessmarius@yahoo.com",
  password: DEFAULT_INSECURE_PASSWORD,
  password_confirmation: DEFAULT_INSECURE_PASSWORD
})

michael = User.find_by_email('morales_michael@fastmail.fm')
virginia   = User.find_by_email('vmorales12@yahoo.com')
gabby  = User.find_by_email('morales_gabriela@yahoo.com')
ali  = User.find_by_email('aliciam750@yahoo.com')
maria  = User.find_by_email('jessmarius@yahoo.com')

seed_user = michael

seed_user.statuses.create(content: "Hello, world!")
virginia.statuses.create(content: "Hi, I'm Virginia")
gabby.statuses.create(content: "Hello from the internet!")
ali.statuses.create(content: "I want to learn html javapress")
maria.statuses.create(content: "Treebook is awesome!")

UserFriendship.request(seed_user, virginia).accept!
UserFriendship.request(seed_user, gabby).block!
UserFriendship.request(seed_user, ali)
UserFriendship.request(maria, seed_user)