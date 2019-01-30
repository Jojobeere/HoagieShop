class Ingredient < ApplicationRecord
	has_many :ordered_additionallies
  	has_many :hoagies, through: :ordered_additionallies
end
