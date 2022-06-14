require 'rails_helper'

RSpec.describe GasService do

 it 'returns gas price api' do
   search = GasService.get_state_price('Colorado')

   expect(search).to_not be_nil
   expect(search.name).to be_a String
   expect(search.regular).to be_a String
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
