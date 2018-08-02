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

  def self.filter(name)
    all.select{|animal| name.downcase == animal.type_of_animal.name.downcase}
  end

end
