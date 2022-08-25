require 'rails_helper'

#User Story 2, Parent Show

#As a visitor
#When I visit '/parents/:id'
#Then I see the parent with that id including the parent's attributes:
#- data from each column that is on the parent table
RSpec.describe("brands show", type: :feature) do
  it("brand1 attributes") do
    brand1 = Brand.create!(    name: "Ford",     country_of_origin: "USA",     num_of_models: 10,     domestic: true)
    brand2 = Brand.create!(    name: "Chevy",     country_of_origin: "USA",     num_of_models: 5,     domestic: true)
    brand3 = Brand.create!(    name: "Toyota",     country_of_origin: "Japan",     num_of_models: 4,     domestic: false)
    visit("/brands/#{brand1.id}")
    expect(page).to(have_content(brand1.name))
    expect(page).to(have_content(brand1.country_of_origin))
    expect(page).to(have_content(brand1.num_of_models))
    expect(page).to_not have_content(brand2.name)
  end
end
