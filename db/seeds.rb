# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP CATALOG'
tech = Catalog.create! name: '技术'
apple = Catalog.create! name: 'Apple'
idea = Catalog.create! name: '想法'

puts 'SETTING UP topics'
tech.topics.create! name: 'Ruby'
tech.topics.create! name: 'Python'
tech.topics.create! name: 'Javascript'

apple.topics.create! name: 'OSX'
apple.topics.create! name: 'MBP'
apple.topics.create! name: 'iPhone'

idea.topics.create! name: '设计'
idea.topics.create! name: '分享'
idea.topics.create! name: '求职'

puts 'SETTING UP DEFAUT USER'
User.create! :name => 'lxxdn', :email => 'julien.luxiao@gmail.com', :password => '12345678', :password_confirmation => '12345678'

puts 'SETTNG UP TIPS'
Tip.create! content: "棉被吹走了"
Tip.create! content: "Matz 说: 用 Ruby 2.0"
Tip.create! content: "我和我的小伙伴们都震惊了"
Tip.create! content: "你吓到我了"
Tip.create! content: "完工啦"
Tip.create! content: "毛主席说：Go是一个好同志"
Tip.create! content: "不要在意这些细节"