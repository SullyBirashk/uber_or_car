require 'rails_helper'

RSpec.describe 'Estimate Show' do

 it 'exists' do
   visit '/estimate/new'

   fill_in('Monthly car payment', with: 330)
   fill_in('Insurance cost', with: 600)
   fill_in('Miles driven this month', with: 1200)
   fill_in('State you live in', with: 'Colorado')
   click_button('Calculate Price')

   expect(current_path).to eq("/estimate")
 end

 it "calculates car total" do
   visit '/estimate/new'

   fill_in('Monthly car payment', with: 330)
   fill_in('Insurance cost', with: 600)
   fill_in('Miles driven this month', with: 1200)
   fill_in('State you live in', with: 'Colorado')
   click_button('Calculate Price')

   expect(current_path).to eq("/estimate")
   save_and_open_page
   expect(page).to have_content("Car Payment")
   expect(page).to have_content("Uber Cost")
 end
end
