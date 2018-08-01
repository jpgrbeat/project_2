class Animal < ApplicationRecord
  belongs_to :shelter
  belongs_to :type_of_animal

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
end
