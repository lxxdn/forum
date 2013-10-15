# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP CATALOG'
tech = Catalog.create! name: 'Technology'
apple = Catalog.create! name: 'Apple'
idea = Catalog.create! name: 'Idea'

puts 'SETTING UP topics'
tech.topics.create! name: 'Ruby'
tech.topics.create! name: 'Python'
tech.topics.create! name: 'Javascript'

apple.topics.create! name: 'OSX'
apple.topics.create! name: 'MBP'
apple.topics.create! name: 'iPhone'

idea.topics.create! name: 'Design'
idea.topics.create! name: 'Share'
idea.topics.create! name: 'Jobs'

puts 'SETTING UP DEFAUT USER'
User.create! :name => 'lxxdn', :email => 'julien.luxiao@gmail.com', :password => '12345678', :password_confirmation => '12345678'

puts 'SETTNG UP TIPS'
Tip.create! content: "Ruby is a dynamic language"
Tip.create! content: "Matz said: Use Ruby 2.0"
Tip.create! content: "The forum is developped by ROR"
Tip.create! content: "Ruby 2.1 is comming soon"