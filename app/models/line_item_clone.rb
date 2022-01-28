class LineItemClone < ApplicationRecord
  belongs_to :product
  has_many :payment
  belongs_to :image
  belongs_to :cart
end
