class Place < ApplicationRecord
  belongs_to :user
  validates :name, :description, :address, presence: true
  validates :name, length: { minimum: 4 }, presence: true
  
end
