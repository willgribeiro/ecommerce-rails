class User < ApplicationRecord
  has_secure_password
  
  #validates :current_password, presence: true, on: :update
  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true
end
