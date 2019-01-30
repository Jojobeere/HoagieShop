# HoagieShop
A fantastic shop for delicious Hoagies.

# Installation
1. Make sure you have Ruby 2.3 installed. Using [RailsInstaller](http://railsinstaller.org/en) reduces complications.
2. Run `git clone` in your terminal with the link to this repository or to your fork. Example:
```
git clone https://github.com/HTW-Runner/HoagieShop
```
3. Change to the HoagieShop folder. (Do not use the git bash terminal for this and the next steps!)
4. Run `gem install rails` to install Rails. If this does not work due to bundler, run `gem install bundle`.
5. Run `bundle install` to get all dependencies.
6. Run `rails db:setup`. This will set-up the database with default values.
7. Run `rails server` in your terminal and go to `http://localhost:3000` and you should see the Homepage. Congratulation you've got your own Hoagie Shop!

# Resetting the Database
For some reason rails gets always denied when running `rails db:reset` on Windows at least. A more dangerous method is using `rake db:drop:_unsafe`. I would only recommend this in development as it will delete your sqlite file. Afterwards run `rails db:migrate` if you want a fresh database or `rails db:setup`.