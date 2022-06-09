class Estimate
  attr_reader

  def initialize(payment, insurance, miles, gas_prices)
    @payment = payment
    @insurance = insurance
    @miles = miles
    @gas_prices = gas_prices
  end

end
