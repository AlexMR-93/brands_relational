require "rails_helper"

#User Story 4, Child Show
#As a visitor
#When I visit '/child_table_name/:id'
#Then I see the child with that id including the child's attributes:
RSpec.describe("cars show", type: :feature) do
  before(:each) do
    @brand1 = Brand.create!(    name: "Ford",     country_of_origin: "USA",     num_of_models: 10,     domestic: true)
    @focus = @brand1.cars.create!(    name: "Focus",     price: 90000,     maunual_transmission: true)
    @brand2 = Brand.create!(    name: "Chevy",     country_of_origin: "USA",     num_of_models: 5,     domestic: true)
    @cobolt = @brand2.cars.create!(    name: "Cobalt",     price: 10000,     maunual_transmission: false)
    @brand3 = Brand.create!(    name: "Toyota",     country_of_origin: "Japan",     num_of_models: 4,     domestic: false)
    @prius = @brand3.cars.create!(    name: "Prius",     price: 11000,     maunual_transmission: true)
  end

  it("name of each car Record") do
    visit("/cars/#{@focus.id}")
    expect(page).to(have_content(@focus.name))
    expect(page).to(have_content(@focus.price))
    expect(page).to_not(have_content(@cobolt.name))
  end
end
