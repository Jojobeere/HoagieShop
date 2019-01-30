class Comment < ApplicationRecord
  foreign_key: "review_id",
  foreign_key: "customer_id"
end
