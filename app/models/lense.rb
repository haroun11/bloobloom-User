class Lense < ApplicationRecord
    has_many :lense_currencies
    has_many :currencies, through: :lense_currencies
end