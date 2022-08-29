require "rails_helper"


RSpec.describe(Brand) do
  describe("brand model") do
    it { should(have_many(:cars)) }
  end

  describe("number of children to each parent") do
    before(:each) do
      @brand1 = Brand.create!(      name: "Ford",       country_of_origin: "USA",       num_of_models: 10,       domestic: true)
      @focus = @brand1.cars.create!(      name: "Focus",       price: 90000,       maunual_transmission: true)
      @flex = @brand1.cars.create!(      name: "Flex",       price: 12000,       maunual_transmission: false)
      @brand2 = Brand.create!(      name: "Chevy",       country_of_origin: "USA",       num_of_models: 5,       domestic: true)
      @cobalt = @brand2.cars.create!(      name: "Cobalt",       price: 10000,       maunual_transmission: false)
      @camero = @brand2.cars.create!(      name: "Camero",       price: 13000,       maunual_transmission: true)
      @brand3 = Brand.create!(      name: "Toyota",       country_of_origin: "Japan",       num_of_models: 4,       domestic: false)
      @prius = @brand3.cars.create!(      name: "Prius",       price: 11000,       maunual_transmission: true)
      @tundra = @brand3.cars.create!(      name: "Tundra",       price: 14000,       maunual_transmission: true)
      @tacoma = @brand3.cars.create!(      name: "Tacoma",       price: 15000,       maunual_transmission: false)
    end

    #User Story 7, Parent Child Count
#As a visitor
#When I visit a parent's show page
#I see a count of the number of children associated with this parent
      #visit("/brands/")
    it("returns the child count") do
      expect(@brand1.child_count).to(eq(2))
      expect(@brand2.child_count).to(eq(2))
      expect(@brand3.child_count).to(eq(3))
    end
  end
end
