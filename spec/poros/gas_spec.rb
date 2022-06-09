require 'rails_helper'

RSpec.describe Gas do
  it "exists with attributes" do
    gas_data = {:success=>true,
 :result=>
  {:state=>{:currency=>"usd", :name=>"Colorado", :lowerName=>"colorado", :gasoline=>"4.727", :midGrade=>"5.040", :premium=>"5.330", :diesel=>"5.468"},
   :cities=>
    [{:currency=>"usd", :gasoline=>"4.721", :midGrade=>"5.038", :premium=>"5.374", :diesel=>"5.432", :name=>"Boulder-Longmont", :lowerName=>"boulder-longmont"
      }]}}


    gas = Gas.new(gas_data)
    expect(gas).to be_a Gas
    expect(gas.name).to be_a String
    expect(gas.regular).to be_a String
    expect(gas.medium).to be_a String
    expect(gas.premium).to be_a String
    expect(gas.diesel).to be_a String
  end
end
