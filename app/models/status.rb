class Status < ApplicationRecord
    self.primary_key = :id
    has_many :payment
end
