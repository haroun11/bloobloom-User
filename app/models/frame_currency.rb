class FrameCurrency < ApplicationRecord
  belongs_to :frame
  belongs_to :currency
  has_many :glasses
end
