module Api  
  module V1 
    class FramesController < ApplicationController
      before_action :set_frame, only: [:show]
      
      def index
        # can use also Geocoder.search(current_user.current_sign_in_ip) for searching the country with IP 
        currency_id = Country.where(country: current_user.country).first.currency_id
        @frames = Frame.all
                  .joins(:frame_currencies)
                  .where(status: 1)
                  .where(frame_currencies: { currency_id: currency_id} )
        
        render json: @frames,
                include: [ :frame_currencies]
        
      end
      
      def show
        render json: @frame
      end

      private

      def set_frame
        @frame = Frame.find(params[:id])
      end

    end 
  end
end