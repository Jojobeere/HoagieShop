class OrderedAdditionally < ApplicationRecord
  foreign_key: "hoagie_id",
  foreign_key: "ingredient_id"
end
