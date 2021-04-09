class Position < ApplicationRecord
  # has_many :transactions
  # has_many :users, through: :transactions

  # def user_positions
  #   transactions.map do |transaction|
  #     transaction.user_id
  #   end
  # end

  # def transactions_filter
  #   Transaction.where(user_id: 1)
  # end
end
