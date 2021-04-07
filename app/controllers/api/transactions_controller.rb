class Api::TransactionsController < ApplicationController
  before_action :authenticate_user, except: [:index] #this keeps index and show from just blatantly being blocked without a jwt

  def index
    @transactions = Transaction.where(user_id: current_user.id) #current_user.
    render "index.json.jb"
  end

  def create
    @transaction = Transaction.new(
      user_id: current_user.id,
      position_id: params[:position_id],
      purchase_price: params[:purchase_price],
      purchase_qty: params[:purchase_qty],
      status_open: params[:status_open],
    )

    if @transaction.save
      render "show.json.jb"
    else
      render json: { errors: @transaction.errors.full_messages }, status: 406
    end
  end

  def show
    @transaction = Transaction.find(params[:id])

    if current_user.id == @transaction.user_id
      # transaction_id = params[:id]
      # @transaction = Transaction.find(transaction_id)
      render "show.json.jb"
    else
      render json: { message: "Unauthorized" }, status: 406
    end
  end

  def update
    @transaction = Transaction.find(params[:id])

    if current_user.id == @transaction.user_id
      # transaction_id = params[:id]
      # @transaction = Transaction.where(user_id: current_user.id).find(transaction_id)
      @transaction.purchase_price = params[:purchase_price] || @transaction.purchase_price
      @transaction.purchase_qty = params[:purchase_qty] || @transaction.purchase_qty
      @transaction.status_open = params[:status_open] || @transaction.status_open

      if @transaction.save
        render "show.json.jb"
      else
        render json: { errors: @transaction.errors.full_messages }, status: 406
      end
    else
      render json: { message: "Unauthorized" }, status: 406
    end

    # if @transaction.save
    #   render "show.json.jb"
    # else
    #   render json: { errors: @transaction.errors.full_messages }, status: 406
    # end
  end

  def destroy
    @transaction = Transaction.find(params[:id])

    if current_user.id == @transaction.user_id
      @transaction.destroy
      # @transaction = Transaction.find(transaction_id)
      render json: { message: "The transaction was destroyed" }
    else
      render json: { message: "Unauthorized" }, status: 406
    end
  end

  #   @transaction = Transaction.find(params[:id])

  #   # @transactions = Transaction.where(user_id: current_user.id)
  #   if current_user.id == @transaction.user_id
  #     @transaction.destroy
  #     render json: { message: "The transaction was destroyed" }
  #     # else
  #     #   render json: { errors: @transaction.errors.full_messages }, status: 406
  #     # end
  #   else
  #     render json: { message: "Unauthorized" }, status: 406
  #   end
  # end
end
