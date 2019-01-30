class Order < ApplicationRecord
  has_many :hoagies,
  foreign_key: "customer_id"
end
