class Tenant < ApplicationRecord
  belongs_to :property
  has_many :rent_payments
end
