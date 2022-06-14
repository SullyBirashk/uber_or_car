class GasService

  def self.get_state_prices
    JSON.parse(File.read('gas.json'), symbolize_names: true)
  end

  def self.get_state_price(state)
    state_prices = self.get_state_prices
    state_price_data = state_prices[:result].find do |state_price|
      state_price[:name] == state
    end
    state_gas_info = Gas.new(state_price_data)
  end

  # def self.get_state_prices(state)
  #   conn = Faraday.new(
  #     url: 'https://api.collectapi.com/gasPrice/stateUsaPrice',
  #     headers: {
  #       'Content-Type' => 'application/json',
  #       'authorization' => 'apikey 30Vs5NeHiSMeECYHlYGUKp:6MEw3lylxhsiH27wsvOCxT'
  #     },
  #     params: {state: state}
  #   )
  #   response = conn.get
  #   JSON.parse(response.body, symbolize_names: true)
  # end
end
