class CarEstimator
  attr_reader :payment, :insurance, :miles, :gas_price, :avg_mpg, :maintenance, :state

  def initialize(info)
    @payment = info[:payment].to_f
    @insurance = info[:insurance].to_f
    @miles = info[:miles].to_i
    @gas_price = info[:gas_price_by_state].regular.to_f
    @state = info[:gas_price_by_state].name
    @avg_mpg = 24.2
    #Found by https://afdc.energy.gov/data/10310
    @maintenance = 1186
    #Found by AAA
  end

  def total
    main = (@payment + @insurance)
    gallons_used = (@miles / @avg_mpg)
    cost_of_gas = (gallons_used * @gas_price)
    maintenance_per_month = @maintenance / 12
    total_per_month = (main + cost_of_gas + maintenance_per_month).round(2)
  end
end
