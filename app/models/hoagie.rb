class Hoagie < ApplicationRecord
  has_one :base

  validates :base_id, presence:true, numericality: { only_integer: true }
end
