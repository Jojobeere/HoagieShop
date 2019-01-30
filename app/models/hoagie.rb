class Hoagie < ApplicationRecord
  has_one :base,
  has_many :ingredients,
  foreign_key: "base_id",
  foreign_key: "order_id",
  validates :base_id, presence:true, numericality: { only_integer: true }
end
