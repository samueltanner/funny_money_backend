class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  has_many :transactions
  has_many :positions, through: :transactions
  has_many :user_groups
  has_many :groups, through: :user_groups

  # def transaction_symbol
  #   transactions.map do |transaction|
  #     transaction
  #   end
  # end
  # def transactions_list
  #   transactions_array = []
  #   transactions.map do |transaction|
  #     transactions_array << transaction.symbol
  #     transactions_array << transaction.purchase_price
  #   end
  # end
end
