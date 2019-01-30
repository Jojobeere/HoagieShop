class CreateHoagies < ActiveRecord::Migration[5.1]
  def change
    create_table :hoagies do |t|
      t.belongs_to :base
      t.belongs_to :order
      t.integer :count
      t.timestamps
    end

    add_foreign_key :hoagies, :bases
    add_foreign_key :hoagies, :orders
  end
end
