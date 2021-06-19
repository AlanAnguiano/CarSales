class Dealership < ApplicationRecord
  validates :name, presence: true

  has_many :cars
end
