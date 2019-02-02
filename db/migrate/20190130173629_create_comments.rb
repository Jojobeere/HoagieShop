class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.belongs_to :review
      t.belongs_to :customer
      t.text :text
      t.string :image
      t.references :review, foreign_key: true
      t.timestamps
    end

    add_foreign_key :comments, :reviews
    add_foreign_key :comments, :customers
  end
end
