class Api::PositionsController < ApplicationController
  # before_action :authenticate_user #except: [:index] #this keeps index and show from just blatantly being blocked without a jwt

  # def index
  #   @positions = Position.all
  #   # @positions = @positions.map do |position|
  #   #   position.transactions.where(user_id: current_user.id)
  #   # end
  #   # @positions = Position.where(user_id: current_user.id)
  #   render "index.json.jb"
  # end

  # def create
  #   @position = Position.new(
  #     symbol: params[:symbol],
  #   )

  #   if @position.save
  #     render "show.json.jb"
  #   else
  #     render json: { errors: @position.errors.full_messages }, status: 406
  #   end
  # end

  # def show
  #   @position = Position.find(params[:id])

  #   if current_user.id == @position.id
  #     render "show.json.jb"
  #   else
  #     render json: { message: "Unauthorized" }, status: 406
  #   end
  # end

  # def update
  #   @position = Position.find(params[:id])

  #   if current_user.id == @position.user_id
  #     @position.symbol = params[:symbol] || @position.symbol

  #     if @position.save
  #       render "show.json.jb"
  #     else
  #       render json: { errors: @position.errors.full_messages }, status: 406
  #     end
  #   else
  #     render json: { messages: "Unauthorized" }, status: 406
  #   end
  # end

  # def destroy
  #   @position = Position.find(params[:id])

  #   if current_user.id == @position.user_id
  #     @position.destroy
  #     render json: { message: "The position was destroyed" }
  #   else
  #     render json: { messages: "Unauthorized" }, status: 406
  #   end
  # end
end
