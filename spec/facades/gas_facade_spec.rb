require 'rails_helper'

RSpec.describe GasFacade do

  it 'returns example' do
    data = GasFacade.find_gas_prices('CO')
    expect(data).to be_a Gas
    expect(data.name).to be_a String
    expect(data.medium).to be_a String
    expect(data.premium).to be_a String
    expect(data.regular).to be_a String
  end

  # it 'returns example' do
  #  example = GasFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = GasFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
  #
  # it 'returns example' do
  #  example = GasFacade.method_here
  #  example.each do |ex|
  #    expect(ex).to be_a PoroName
  #    expect(ex.attribute).to be_a String
  #    expect(ex.attribute).to_not be_nil
  #   end
  # end
end
