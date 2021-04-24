class Transaction < ApplicationRecord
  belongs_to :user
  validates :purchase_price, presence: true
  validates :purchase_qty, presence: true
  # belongs_to :position

  # def current_price
  #   response = HTTP.get("https://cloud.iexapis.com/stable/stock/appl/quote?token=#{Rails.application.credentials.alpha_advantage_api[:api_key]}").parse
  #   return response
  # end
  def current_market_info
    @transaction_response = HTTP.get("https://cloud.iexapis.com/stable/stock/#{symbol}/quote?token=#{Rails.application.credentials.iex_api[:api_key]}").parse
    return @transaction_response
  end

  def market_value
    purchase_qty * current_market_info["latestPrice"]
  end

  def cost_basis
    purchase_qty * purchase_price
  end

  def gain_loss_percentage
    #(new - old)/old
    (cost_basis - market_value) / market_value
  end

  def gain_loss
    #(new - old)/old
    market_value - cost_basis
  end


end
