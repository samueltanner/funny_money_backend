class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :positions
  has_many :transactions, through: :positions
end
