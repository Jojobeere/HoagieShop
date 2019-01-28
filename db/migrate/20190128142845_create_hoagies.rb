class CreateHoagies < ActiveRecord::Migration[5.1]
  def change
    create_table :hoagies do |t|
      t.integer :base_id

      t.timestamps
    end
  end
end
