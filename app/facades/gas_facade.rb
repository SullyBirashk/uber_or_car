class GasFacade

  def self.find_gas_prices(state)
    data = GasService.get_state_price(state)
  end
end
