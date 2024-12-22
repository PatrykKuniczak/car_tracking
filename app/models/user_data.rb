class UserData < ApplicationRecord
  belongs_to :user

  # Validations
  validates :name, length: { minimum: 2 }
  validates :surname, length: { minimum: 2 }
  validates :position, length: { minimum: 2 }
  validates :age, numericality: { greater_than_or_equal_to: 18 }
end
