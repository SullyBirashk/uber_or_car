require 'rails_helper'

RSpec.describe Gas do
  it "exists with attributes" do
    gas_data = {:currency=>"usd", :name=>"Colorado", :gasoline=>"4.875", :midGrade=>"5.204", :premium=>"5.500", :diesel=>"5.516"}

    gas = Gas.new(gas_data)
    expect(gas).to be_a Gas
    expect(gas.name).to be_a String
    expect(gas.regular).to be_a String
  end
end
