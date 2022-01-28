class Payment < ApplicationRecord
  self.primary_key = :id
  belongs_to :user
  belongs_to :district
  belongs_to :cart
  belongs_to :status

  validates :user_id, presence: true
  validates :fullname, presence: true
  validates :country, presence: true
  validates :city, presence: true
  validates :district_id, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :cart_id, presence: true
  validates :subtotal, presence: true
  validates :total, presence: true
  validates :status_id, presence: true
  
end
