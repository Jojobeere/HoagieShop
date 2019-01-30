class Customer < ApplicationRecord
  has_many :reviews,
  has_many :comments
end
