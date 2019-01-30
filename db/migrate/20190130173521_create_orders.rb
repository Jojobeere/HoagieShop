class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :customer
      t.string :status
      t.decimal :price
      t.timestamps
    end

    add_foreign_key :orders, :customers
  end
end
