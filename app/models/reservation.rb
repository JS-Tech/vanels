class Reservation < ApplicationRecord

  validates :firstname, presence: true, length: { maximum: 30 }
  validates :lastname, presence: true, length: { maximum: 30 }
  validates :email, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :phone, presence: true
  validates :zip, numericality: { only_integer: true, greater_than: 0 }
  validates :city, presence: true, length: { maximum: 30 }
  validates :address, presence: true, length: { maximum: 100 }

  validates :date, presence: true, uniqueness: true
  validates :description, presence: true, length: { maximum: 500 }
end
