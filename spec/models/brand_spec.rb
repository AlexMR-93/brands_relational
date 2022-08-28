require "rails_helper"


RSpec.describe(Brand) do
  describe("brand model") do
    it { should(have_many(:cars)) }
  end

  describe("number of children to ach parent") do
    before(:each) do
      @brand1 = Brand.create!(      name: "Ford",       country_of_origin: "USA",       num_of_models: 10,       domestic: true)
      @focus = @brand1.cars.create!(      name: "Focus",       price: 90000,       maunual_transmission: true)
      @brand2 = Brand.create!(      name: "Chevy",       country_of_origin: "USA",       num_of_models: 5,       domestic: true)
      @cobolt = @brand2.cars.create!(      name: "Cobalt",       price: 10000,       maunual_transmission: false)
      @brand3 = Brand.create!(      name: "Toyota",       country_of_origin: "Japan",       num_of_models: 4,       domestic: false)
      @prius = @brand3.cars.create!(      name: "Prius",       price: 11000,       maunual_transmission: true)
    end

    #User Story 7, Parent Child Count
#As a visitor
#When I visit a parent's show page
#I see a count of the number of children associated with this parent
    it("returns the childc count")
  end
end
