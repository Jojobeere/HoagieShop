class Hoagie < ApplicationRecord
  belongs_to :base, foreign_key: 'base_id'
  belongs_to :order, foreign_key: 'order_id', optional: true
  has_many :ordered_additionallies
  has_many :ingredients, through: :ordered_additionallies
  validates :base_id, presence: true, numericality: { only_integer: true }
  validates :count, presence: true, numericality: { only_integer: true }
  accepts_nested_attributes_for :ordered_additionallies
end
