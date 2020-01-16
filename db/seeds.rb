# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    Product.create([{
    prd_sku:Faker::Company.spanish_organisation_number,
    prd_name:Faker::Commerce.product_name,
    image: Faker::Avatar.image,
    price:Faker::Commerce.price
}])
end