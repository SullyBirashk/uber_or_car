require 'rails_helper'

RSpec.describe 'Welcome Create' do
 before :each do

 end

 it 'exists' do
   visit '/welcome'

   fill_in('Monthly car payment', with: 330)
   fill_in('Insurance cost', with: 600)
   fill_in('Miles driven this month', with: 1200)
   fill_in('State you live in', with: 'CO')
   click_button('Calculate Price')

   expect(current_path).to eq("/estimate")
 end
end
