class User < ApplicationRecord
    
    has_secure_password
    self.primary_key = :id
    belongs_to :cart
    has_many :payment
    

    validates :email, presence: true
    validates :username, presence: true
end
