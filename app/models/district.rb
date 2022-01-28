class District < ApplicationRecord
    self.primary_key = :id
     has_many :payment

    validates :name, presence: true
    validates :price, presence: true
end
