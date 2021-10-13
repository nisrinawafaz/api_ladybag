class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.references :image, foreign_key: true
      t.string :image
      t.integer :price_cents
      t.belongs_to :cart, foreign_key: true

      t.timestamps
    end
  end
end
