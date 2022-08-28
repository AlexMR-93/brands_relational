class Brand < ApplicationRecord
  has_many :cars

  def child_count
    Brand.cars.count
    require "pry"

    binding.pry
  end
end
