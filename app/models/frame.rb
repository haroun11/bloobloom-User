class Frame < ApplicationRecord
    has_many :frame_currencies
    has_many :currencies, through: :frame_currencies
end