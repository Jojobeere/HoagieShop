class Order < ApplicationRecord
  belongs_to :customer, foreign_key: 'customer_id'
  has_many :hoagies
end
