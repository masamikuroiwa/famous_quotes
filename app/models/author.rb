class Author < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :country, length: { maximum: 255 }
  validates :note, length: { maximum: 1000 }
  enum sex: %i(male female)
end
