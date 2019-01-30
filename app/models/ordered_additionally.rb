class OrderedAdditionally < ApplicationRecord
  belongs_to :hoagie, foreign_key: "hoagie_id",
  belongs_to :ingredient, foreign_key: "ingredient_id"
end
