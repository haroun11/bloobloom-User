module Api  
  module V1 
    class LensesController < ApplicationController
      before_action :set_lense, only: [:show]

      def index
        # can use also Geocoder.search(current_user.current_sign_in_ip) for searching the country with IP 
        currency_id = Country.where(country: current_user.country).first.currency_id
        @lenses = Lense.all
                  .joins(:lense_currencies)
                  .where(lense_currencies: { currency_id: currency_id} )
                  
        render json: @lenses,
                include: [ :lense_currencies]
                
      end
      
      def show
        render json: @lense
      end

      private

      def set_lense
        @lense = Lense.find(params[:id])
      end

    end 
  end
end