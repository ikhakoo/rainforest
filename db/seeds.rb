# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


100.times do 
    Product.create!(
        name: Faker::Commerce.product_name,
        description: "testing with faker",
        price_in_cents: rand(100..1000000),
        created_by_id: 3,
        )
   puts "|"
end