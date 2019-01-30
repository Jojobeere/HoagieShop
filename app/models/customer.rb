class Customer < ApplicationRecord
  has_many :comments
  has_many :orders
  has_many :reviews
end
