require "rails_helper"


RSpec.describe("brands index", type: :feature) do
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

  #User Story 1, Parent Index
#For each parent table
#As a visitor
#When I visit '/parents'
#Then I see the name of each parent record in the system
  it("attributes each Brands Record") do
    visit("/brands/")
    expect(page).to(have_content(@brand1.name))
    expect(page).to(have_content(@brand2.name))
    expect(page).to(have_content(@brand3.name))
  end

  #User Story 9, Parent Index Link
#As a visitor
#When I visit any page on the site
#Then I see a link at the top of the page that takes me to the Parent Index
  it("links to each parent ") do
    visit("/brands/")
    click_on((@brand1.name))
    expect(current_path).to(eq("/brands/#{@brand1.id}"))
  end
end
