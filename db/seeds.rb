# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Blog.create!(
  	title: "My Blog Post #{i}",
  	body:  "Build out the portfolio feature to allow for an image, a title, a link, and a description."
  )
end
puts "10 blog posts created"

5.times do |i|
  Skill.create!(
    title:  "Rails skill #{i}",
    percent_utilized: 15
  )
end
puts "5 skills created"

9.times do |i|
  Portfolio.create!(
    title: "Portfolio title #{i}",
    subtitle: "My greate service",
    body: "Build out the portfolio feature to allow for an image, a title, a link, and a description.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end
puts "9 portfolios created"