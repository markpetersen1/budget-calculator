class Payment < ApplicationRecord
  validates :title, presence: true
  validates :amount_per_month, presence: true, length: { maximum: 99999 } #not working?
end
