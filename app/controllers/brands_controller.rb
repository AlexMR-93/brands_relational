class BrandsController < ApplicationController
  def index
    @brands = Brand.order(    num_of_models: :desc)
  end

  def show
    @brands = Brand.find(params[:id])
  end
end
