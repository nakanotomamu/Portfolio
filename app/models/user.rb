class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  has_secure_password
  
 
  has_many :favorites
  has_many :favorite_properties, through: :favorites, source: 'property'
end