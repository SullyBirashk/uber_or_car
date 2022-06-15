class EstimateController < ApplicationController

 def new
 end

 def show
   gas_price_by_state = GasFacade.find_gas_prices(params[:state_you_live_in])
   hash = {payment: params[:monthly_car_payment],
           insurance: params[:insurance_cost],
           miles: params[:miles_driven_this_month],
           gas_price_by_state: gas_price_by_state
         }
   @car_estimator = CarEstimator.new(hash)
   @car_total_cost = @car_estimator.total
   @uber_estimator = UberEstimator.new(params[:miles_driven_this_month])
   @uber_total_cost = @uber_estimator.total
 end
end
