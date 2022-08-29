class Brand < ApplicationRecord
  has_many :cars

  def child_count
    self.cars.count
  end
end
