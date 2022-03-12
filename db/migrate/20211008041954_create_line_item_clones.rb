class CreateLineItemClones < ActiveRecord::Migration[6.1]
  def change
    create_table :line_item_clones do |t|
      t.integer :quantity, default: 1
      t.references :image, foreign_key: true
      t.string :image
      t.string :product_name
      t.integer :price_cents
      t.integer :cart_id

      t.timestamps
    end
  end
end
