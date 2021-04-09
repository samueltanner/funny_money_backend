class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :transactions
  has_many :positions, through: :transactions
end
