class Cart < ApplicationRecord
    has_many :line_items,-> { order(created_at: :asc) }, dependent: :destroy
    belongs_to :user
    belongs_to :payment

    def add_product(image)
        current_item = line_items.find_by(image_id: image.id)
    
        if current_item
        current_item.increment(:quantity)
        else
          current_item = line_items.build(image_id: image.id, price_cents: image.product.price_cents, product_name: image.product.name)
        end
        current_item

      end

end
