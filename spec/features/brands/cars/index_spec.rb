require "rails_helper"

#User Story 5, Parent Children Index
#As a visitor
#When I visit '/parents/:parent_id/child_table_name'
#Then I see each Child that is associated with that Parent with each Child's attributes:
RSpec.describe("cars index", type: :feature) do
  it("name of each car Record") do
    brand1 = Brand.create!(    name: "Ford",     country_of_origin: "USA",     num_of_models: 10,     domestic: true)
    focus = brand1.cars.create!(    name: "Focus",     price: 90000,     maunual_transmission: true)
    brand2 = Brand.create!(    name: "Chevy",     country_of_origin: "USA",     num_of_models: 5,     domestic: true)
    cobolt = brand2.cars.create!(    name: "Cobalt",     price: 10000,     maunual_transmission: false)
    brand3 = Brand.create!(    name: "Toyota",     country_of_origin: "Japan",     num_of_models: 4,     domestic: false)
    prius = brand3.cars.create!(    name: "Prius",     price: 11000,     maunual_transmission: true)
    visit("/brands/#{brand1.id}/cars")
    expect(page).to(have_content(focus.name))
    expect(page).to(have_content(focus.price))
    expect(page).to(have_content(focus.maunual_transmission))
    visit("/brands/#{brand2.id}/cars")
    expect(page).to(have_content(cobolt.name))
    expect(page).to(have_content(cobolt.price))
    expect(page).to(have_content(cobolt.maunual_transmission))
    visit("/brands/#{brand3.id}/cars")
    expect(page).to(have_content(prius.name))
    expect(page).to(have_content(prius.price))
    expect(page).to(have_content(prius.maunual_transmission))
  end
end