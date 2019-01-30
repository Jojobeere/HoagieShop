class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :customer
      t.string :selfie
      t.integer :grade
      t.string :title
      t.text :text
      t.timestamps
    end

    add_foreign_key :reviews, :customers
  end
end
