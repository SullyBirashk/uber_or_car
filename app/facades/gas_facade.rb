class GasFacade

  def self.find_gas_prices(state)
    data = GasService.get_state_prices(state)
    prices = Gas.new(data)
  end

end
