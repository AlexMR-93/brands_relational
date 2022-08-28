class BrandsController < ApplicationController
  def index
    @brands = Brand.order(    num_of_models: :desc)
  end

    #@brands = Brand.newest_first
  def show
    @brand = Brand.find(params[:id])
  end
end
