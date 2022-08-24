class BrandsController < ApplicationController
  def index
    @brands = brand.all
  end
end
