# HoagieShop
A fantastic shop for delicious Hoagies.

# Installation
1. Make sure you have Ruby 2.3 installed. Using [RailsInstaller](http://railsinstaller.org/en) reduces complications.
2. Run `git clone` in your terminal with the link to this repository or to your fork. Example:
```
git clone https://github.com/HTW-Runner/HoagieShop
```
3. Change to the HoagieShop folder in your terminal. (Do not use the git bash terminal for this and the next steps!)
4. Run `bundle install` to get all dependencies. If this does not work due to a bundler error, run `gem install bundle` before.
5. Run `rails server` in your terminal and go to `http://localhost:3000` and you should see the Homepage. Congratulation you've got your own Hoagie Shop!

# Populating the Database
⚠️ WARNING: Deletes previous entered data!

To get development starting you need to fill the database. For this run the `rake db:populate` command.