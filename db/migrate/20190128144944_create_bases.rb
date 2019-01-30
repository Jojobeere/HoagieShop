class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.timestamps
    end
  end
end
