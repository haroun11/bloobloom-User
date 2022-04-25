class LenseCurrency < ApplicationRecord
  belongs_to :lense
  belongs_to :currency
  has_many :glasses
end
