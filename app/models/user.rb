class User < ApplicationRecord
  has_secure_password

  has_many :reviews
  has_many :companies, through: :reviews

  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :password, length: { in: 1..20, message: "Password should be between 1 and 20 characters." }   
end
