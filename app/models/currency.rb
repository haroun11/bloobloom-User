class Currency < ApplicationRecord
  has_many :frame_currencies, dependent: :destroy
  has_many :frames, through: :frame_currencies

  has_many :lense_currencies
  has_many :currencies, through: :lense_currencies

  has_many  :countries
end
