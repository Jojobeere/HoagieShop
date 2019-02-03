class OrderedAdditionally < ApplicationRecord
  belongs_to :hoagie, foreign_key: 'hoagie_id', optional: true
  belongs_to :ingredient, foreign_key: 'ingredient_id'
  accepts_nested_attributes_for :ingredient
end
