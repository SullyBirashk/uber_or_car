require 'rails_helper'

RSpec.describe GasFacade do

  it 'returns example' do
    data = GasFacade.find_gas_prices('Colorado')
    expect(data).to be_a Gas
    expect(data.name).to be_a String
    expect(data.regular).to be_a String
  end
end
