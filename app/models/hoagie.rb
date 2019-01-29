class Hoagie < ApplicationRecord
  has_one :base, foreign_key: "base_id"
  validates :base_id, presence:true, numericality: { only_integer: true }
end
