require "rails_helper"


RSpec.describe("cars index", type: :feature) do
  before(:each) do
    @brand1 = Brand.create!(    name: "Ford",     country_of_origin: "USA",     num_of_models: 10,     domestic: true)
    @focus = @brand1.cars.create!(    name: "Focus",     price: 90000,     maunual_transmission: true)
    @flex = @brand1.cars.create!(    name: "Flex",     price: 12000,     maunual_transmission: false)
    @brand2 = Brand.create!(    name: "Chevy",     country_of_origin: "USA",     num_of_models: 5,     domestic: true)
    @cobalt = @brand2.cars.create!(    name: "Cobalt",     price: 10000,     maunual_transmission: false)
    @camero = @brand2.cars.create!(    name: "Camero",     price: 13000,     maunual_transmission: true)
    @brand3 = Brand.create!(    name: "Toyota",     country_of_origin: "Japan",     num_of_models: 4,     domestic: false)
    @prius = @brand3.cars.create!(    name: "Prius",     price: 11000,     maunual_transmission: true)
    @tundra = @brand3.cars.create!(    name: "Tundra",     price: 14000,     maunual_transmission: true)
    @tacoma = @brand3.cars.create!(    name: "Tacoma",     price: 15000,     maunual_transmission: false)
  end

    #User Story 5, Parent Children Index
    #As a visitor
    #When I visit '/parents/:parent_id/child_table_name'
    #Then I see each Child that is associated with that Parent with each Child's attributes:
  it("name of each car Record") do
    visit("/brands/#{@brand1.id}/cars")
    expect(page).to(have_content(@focus.name))
    expect(page).to(have_content(@focus.price))
    expect(page).to(have_content(@focus.maunual_transmission))
    visit("/brands/#{@brand2.id}/cars")
    expect(page).to(have_content(@cobalt.name))
    expect(page).to(have_content(@cobalt.price))
    expect(page).to(have_content(@cobalt.maunual_transmission))
    visit("/brands/#{@brand3.id}/cars")
    expect(page).to(have_content(@prius.name))
    expect(page).to(have_content(@prius.price))
    expect(page).to(have_content(@prius.maunual_transmission))
  end
end
