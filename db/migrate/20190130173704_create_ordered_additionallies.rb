class CreateOrderedAdditionallies < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_additionallies do |t|
      t.belongs_to :hoagie
      t.belongs_to :ingredient
      t.timestamps
    end

    add_foreign_key :ordered_additionallies, :hoagies
    add_foreign_key :ordered_additionallies, :ingredients
  end
end
