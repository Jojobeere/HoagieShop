# https://medium.com/@yassimortensen/using-faker-to-seed-your-rails-database-cbfb0960d573
require 'faker'

namespace :db do
  desc 'Reset and poulate database'
  task populate: :environment do
    puts 'Resetting database...'
    puts 'Drop database...'
    Rake::Task['db:drop:_unsafe'].invoke
    puts 'Create database...'
    Rake::Task['db:create'].invoke
    puts 'Migrate database...'
    Rake::Task['db:migrate'].invoke

    puts 'Creating Customers...'
    100.times do
      Customer.create(first_name: Faker::Name.first_name,
                      last_name: Faker::Name.last_name,
                      email: Faker::Internet.email,
                      country: Faker::Address.country,
                      city: Faker::Address.city,
                      post_code: Faker::Address.postcode,
                      street_adress: Faker::Address.street_address,
                      number_suffix: '',
                      bank_details: Faker::Bank.iban, login: Faker::Crypto.md5)
    end

    puts 'Creating Hoagie Bases...'
    50.times do
      Base.create(name: Faker::Coffee.unique.blend_name,
                  description: Faker::Coffee.notes,
                  price: 0.50)
    end

    prng = Random.new

    puts 'Creating Ingredients...'
    10.times do
      Ingredient.create(name: Faker::Dessert.unique.topping,
                        count: prng.rand(50) + 1,
                        price: 0.50)
    end

    puts 'Creating Orders...'
    50.times do
      Order.create(customer_id: prng.rand(100) + 1,
                   status: 'Waiting...',
                   price: 3.50)
    end

    puts 'Creating Hoagies...'
    50.times do
      Hoagie.create(base_id: prng.rand(50) + 1,
                    order_id: prng.rand(50) + 1,
                    count: prng.rand(5) + 1)
    end

    puts 'Adding ingredients to Hoagies...'
    50.times do
      OrderedAdditionally.create(hoagie_id: prng.rand(50) + 1,
                                 ingredient_id: prng.rand(10) + 1)
    end

    puts 'Reviewing Hoagies...'
    50.times do
      Review.create(customer_id: prng.rand(50) + 1,
                    selfie: "/app/assets/images/selfie1.jpg",
                    grade: prng.rand(5) + 1,
                    title: Faker::NewGirl.quote,
                    text: Faker::GameOfThrones.quote)
    end

    puts 'People commenting...'
    50.times do
      Comment.create(review_id: prng.rand(50) + 1,
                     customer_id: prng.rand(50) + 1,
                     text: Faker::LeagueOfLegends.quote,
                     image: 'HoagieShop Images')
    end
  end
end
