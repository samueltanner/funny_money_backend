class Api::PositionsController < ApplicationController
  before_action :authenticate_user, #except: [:index, :show, :destroy] #this keeps index and show from just blatantly being blocked without a jwt
    def index
      # if current_user
      @positions = current_user.positions
      render "index.json.jb"
      # else
      #   render json: { message: "you aren't logged in" } #, status: 401
      # end
    end

  def create
    @position = Position.new(
      user_id: current_user.id,
      symbol: params[:symbol],
      purchase_price: params[:purchase_price],
      purchase_qty: params[:purchase_qty],
      status_open: params[:status_open],
    )

    if @position.save
      render "show.json.jb"
    else
      render json: { errors: @position.errors.full_messages }, status: 406
    end
  end

  def show
    # if current_user
    position_id = params[:id]
    @position = Position.find(position_id)
    render "show.json.jb"
    # else
    #   render json: { message: "You must be logged in" } #, status: 401
    # end
  end

  def update
    position_id = params[:id]
    @position = Position.find(position_id)
    @position.symbol = params[:symbol] || @position.symbol
    @position.purchase_price = params[:purchase_price] || @position.purchase_price
    @position.purchase_qty = params[:purchase_qty] || @position.purchase_qty
    @position.status_open = params[:status_open] || @position.status_open

    if @position.save
      render "show.json.jb"
    else
      render json: { errors: @position.errors.full_messages }, status: 406
    end
  end

  def destroy
    # if current_user
    position_id = params[:id]
    @position = Position.find(position_id)

    if @position.destroy
      render json: { message: "The position was destroyed" }
    else
      render json: { errors: @position.errors.full_messages }, status: 406
    end
    # else
    #   render json: { message: "You must be logged in" } #, status: 401
    # end
  end
end
