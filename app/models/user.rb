class User < ApplicationRecord
  has_many :listings
  has_many :cars, through: :listings

  validates :name, :age, :type_of_car, :username, presence: true
  validates :name, length: { minimum: 2, maximum: 12 }
  validates :age, numericality: { greater_than: 0, less_than: 99 }
  
end
