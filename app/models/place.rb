class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  
  geocoded_by :address
  after_validation :geocode

  validates :name, :description, :address, presence: true
  validates :name, length: { minimum: 4 }, presence: true


  
end
