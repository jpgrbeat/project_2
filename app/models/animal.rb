class Animal < ApplicationRecord
  belongs_to :shelter
  belongs_to :type_of_animal

  validates :name, presence: true
  validates :type_of_animal, presence: true
  validates :description, presence: true
  validates :shelter_name, presence: true

  def shelter_name
    self.shelter.name
  end

  def adoption_status_message
    if self.adopted
      "Our friend is no longer available 😭."
    else
      "Looking for a home! 🏠"
    end
  end

  def self.adopted
    Animal.all.select do |animal|
      animal.adopted == "adopted"
    end.size
  end

  def self.not_adopted
    Animal.all.select do |animal|
      animal.adopted == false
    end.size
  end

end
