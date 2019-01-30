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

    puts 'Creating Hoagie Bases...'
    50.times do
      Base.create(name: Faker::Coffee.blend_name, description: Faker::Coffee.notes)
    end
  end
end
