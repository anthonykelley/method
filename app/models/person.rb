class Person < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :age, numericality: true
end

# could not get message to work