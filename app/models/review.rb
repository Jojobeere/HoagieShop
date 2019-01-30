class Review < ApplicationRecord
  has_many :comments,
  foreign_key: "customer_id"
end
