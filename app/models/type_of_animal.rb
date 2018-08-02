class TypeOfAnimal < ApplicationRecord
  has_many :animals
  has_many :breeds

  validates :name, presence: true
end
