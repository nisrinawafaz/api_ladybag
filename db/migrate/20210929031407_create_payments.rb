class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments, id:false do |t|
      t.primary_key :id
      t.references :user, foreign_key: true
      t.string :fullname
      t.string :country
      t.string :city
      t.references :district, foreign_key: true
      t.text :address
      t.string :phone
      t.integer :cart_id
      t.integer :subtotal
      t.integer :total
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
