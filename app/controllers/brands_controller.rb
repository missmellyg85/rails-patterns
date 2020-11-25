class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def new
  end

  def create
    @brand = Brand.new(params.require(:brand).permit(:name))
    @brand.save
    redirect_to @brand
  end

end
