module Api
  module V1
    class GlassesController < ApplicationController
    
      # POST /glasses
      def create
        @glass = Glass.new(glass_params)
        @frame_currency = FrameCurrency.find(@glass.frame_currency_id)
        @lense_currency = LenseCurrency.find(@glass.lense_currency_id)
        @lense = Lense.find(@lense_currency.lense_id)
        @frame = Frame.find(@frame_currency.frame_id)
        if @lense.stock == 0 
          render :json =>{ :message => "Lense out of stock :) "}
        elsif @frame.stock == 0
          render :json =>{ :message => "Frame out of stock :) "}
        elsif @glass.save
          @price_lense = @lense_currency.price
          @stock = @lense.stock - 1 
          @lense.update(stock: @stock)
          @price_frame = @frame_currency.price
          @stock = @frame.stock - 1 
          @frame.update(stock: @stock)
          @glass.update(price: @price_lense + @price_frame)
          render json: @glass, status: :created
        else
          render json: @glass.errors, status: :unprocessable_entity
        end
      end

      private
    
      def glass_params
        params.require(:glass).permit!
      end

    end
  end
end
