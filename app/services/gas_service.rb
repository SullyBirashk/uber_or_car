class GasService

  def self.get_state_prices(state)
    conn = Faraday.new(
      url: 'https://api.collectapi.com/gasPrice/stateUsaPrice',
      headers: {
        'Content-Type' => 'application/json',
        'authorization' => 'apikey 30Vs5NeHiSMeECYHlYGUKp:6MEw3lylxhsiH27wsvOCxT'
      },
      params: {state: state}
    )
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  end
end
