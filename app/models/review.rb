class Review < ApplicationRecord
  belongs_to :customer, foreign_key: 'customer_id'
  has_many :comments, dependent: :destroy
end
