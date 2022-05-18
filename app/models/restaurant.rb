class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true

  CUISINE = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: CUISINE }
  # TODO: go to routes to validate collection of cuisine types
  # ["chinese", "italian", "japanese", "french", "belgian"].
end
