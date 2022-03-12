class LineItemClone < ApplicationRecord
  belongs_to :product
  has_many :payment
  belongs_to :image

end
