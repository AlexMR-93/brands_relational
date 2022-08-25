require 'rails_helper'

  #User Story 1, Parent Index
#For each parent table
#As a visitor
#When I visit '/parents'
#Then I see the name of each parent record in the system
RSpec.describe("brands index", type: :feature) do
  it("name of each Brands Record") do
    brand1 = Brand.create!(    name: "Ford",     country_of_origin: "USA",     num_of_models: 10,     domestic: true)
    brand2 = Brand.create!(    name: "Chevy",     country_of_origin: "USA",     num_of_models: 5,     domestic: true)
    brand3 = Brand.create!(    name: "Toyota",     country_of_origin: "Japan",     num_of_models: 4,     domestic: false)
    visit("/brands")
    expect(page).to(have_content(brand1.name))
    expect(page).to(have_content(brand2.name))
    expect(page).to(have_content(brand3.name))
  end
end
