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
    begin
      @transaction_response = HTTP.get("https://cloud.iexapis.com/stable/stock/#{symbol}/quote?token=#{Rails.application.credentials.iex_api[:api_key]}").parse
      return @transaction_response
    rescue => exception
      data = { "symbol" => "#{symbol}",
               "companyName" => "Error in finding symbol",
               "primaryExchange" => "NA",
               "calculationPrice" => "close",
               "open" => nil,
               "openTime" => nil,
               "openSource" => "official",
               "close" => nil,
               "closeTime" => nil,
               "closeSource" => "official",
               "high" => nil,
               "highTime" => 0,
               "highSource" => "15 minute delayed price",
               "low" => nil,
               "lowTime" => 1620051306012,
               "lowSource" => "15 minute delayed price",
               "latestPrice" => 0,
               "latestSource" => "Close",
               "latestTime" => "May 3, 2021",
               "latestUpdate" => 1620072002180,
               "latestVolume" => nil,
               "iexRealtimePrice" => 0,
               "iexRealtimeSize" => 1,
               "iexLastUpdated" => 1620071995270,
               "delayedPrice" => nil,
               "delayedPriceTime" => nil,
               "oddLotDelayedPrice" => nil,
               "oddLotDelayedPriceTime" => nil,
               "extendedPrice" => nil,
               "extendedChange" => nil,
               "extendedChangePercent" => nil,
               "extendedPriceTime" => nil,
               "previousClose" => 234.31,
               "previousVolume" => 10380437,
               "change" => 0,
               "changePercent" => 0,
               "volume" => nil,
               "iexMarketPercent" => 0.028984673454788976,
               "iexVolume" => 285657,
               "avgTotalVolume" => 12497255,
               "iexBidPrice" => 0,
               "iexBidSize" => 0,
               "iexAskPrice" => 0,
               "iexAskSize" => 0,
               "iexOpen" => 235.08,
               "iexOpenTime" => 1620071991099,
               "iexClose" => 235.16,
               "iexCloseTime" => 1620071995270,
               "marketCap" => 137541479893,
               "peRatio" => -11.45,
               "week52High" => 278.57,
               "week52Low" => 113.89,
               "ytdChange" => 0.09835964495935713,
               "lastTradeTime" => 1620071999021,
               "isUSMarketOpen" => false }

      return data
    end
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
