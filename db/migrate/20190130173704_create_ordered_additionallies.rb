class CreateOrderedAdditionallies < ActiveRecord::Migration[5.1]
  def change
    create_table :ordered_additionallies do |t|

      t.timestamps
    end
  end
end
