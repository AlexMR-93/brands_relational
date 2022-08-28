require "rails_helper"


RSpec.describe(Car) do
  context("car model") do
    it { should(belong_to(:brand)) }
  end
end
