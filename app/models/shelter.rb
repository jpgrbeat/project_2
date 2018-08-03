class Shelter < ApplicationRecord
  has_many :animals, dependent: :destroy

  validates :name,:address,:mission,:email,:phone, presence: true

  validate :email_checker
  validates :phone, length: {is: 7}

  def email_checker
    email = self.email.split("")
    if !email.include?('@')
      errors.add(:email, message:"email in inproper format")
    end
  end


end
