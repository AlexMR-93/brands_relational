class BrandsCarsController < ApplicationController
  def index
    @brand = Brand.find(params[:id])
    @cars = @brand.cars
  end
end
