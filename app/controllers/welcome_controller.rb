class WelcomeController < ApplicationController

 def index

 end

 def create
   payment = params[:monthly_car_payment]
   insurance = params[:insurance_cost]
   miles = params[:miles_driven_this_month]
   state = params[:state_you_live_in]
   gas_prices = GasFacade.find_gas_prices(state)
   estimate = Estimate.new(payment, insurance, miles, gas_prices)
   redirect_to "/estimate/#{estimate.id}"
 end

end
