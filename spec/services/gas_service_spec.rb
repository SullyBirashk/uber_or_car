require 'rails_helper'

RSpec.describe GasService do
 it 'returns gas price api' do
   search = GasService.get_state_price('Colorado')

   expect(search).to_not be_nil
   expect(search.name).to be_a String
   expect(search.regular).to be_a String
 end
end
