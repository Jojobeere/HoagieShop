class Comment < ApplicationRecord
  belongs_to :customer, foreign_key: 'customer_id'
  belongs_to :review, foreign_key: 'review_id'
end
