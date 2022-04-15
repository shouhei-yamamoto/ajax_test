class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
