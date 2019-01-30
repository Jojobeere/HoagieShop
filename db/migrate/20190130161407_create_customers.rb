class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :country
      t.string :city
      t.string :post_code
      t.string :street_adress
      t.string :number_suffix
      t.string :bank_details
      t.string :login

      t.timestamps
    end
  end
end
