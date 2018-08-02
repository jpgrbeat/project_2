class Shelter < ApplicationRecord
  has_many :animals

  validates :name, presence: true
  validates :address, presence: true
end
