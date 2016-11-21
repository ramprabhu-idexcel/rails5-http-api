class User < ApplicationRecord
  has_secure_token
  has_secure_password

  validates :first_name, :last_name, :email, :username, :phone, :age, presence: true
  validates :username, :email, uniqueness: true
end
