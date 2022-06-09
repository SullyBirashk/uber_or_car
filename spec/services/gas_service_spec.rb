require 'rails_helper'

RSpec.describe GasService do

 it 'returns gas price api' do
   search = GasService.get_state_prices('CO')
   
   expect(search).to be_a Hash
   expect(search).to have_key(:result)
   expect(search[:result]).to be_a Hash
   expect(search[:result]).to have_key(:state)
   expect(search[:result][:state]).to be_a Hash
 end

 # it 'returns example' do
 #   search = GasService.method_here
 #
 #   expect(search).to be_a Hash
 #   expect(search).to have_key(:)
 #   expect(search[:]).to be_a Array
 #   expect(search[:]).to be_a Integer
 #   search[:].each do |example|
 #    expect(example).to have_kay(:)
 #   end
 # end
 #
 #  it 'returns example' do
 #   search = GasService.method_here
 #
 #   expect(search).to be_a Hash
 #   expect(search).to have_key(:)
 #   expect(search[:]).to be_a Array
 #   expect(search[:]).to be_a Integer
 #   search[:].each do |example|
 #    expect(example).to have_kay(:)
 #   end
 # end
end
