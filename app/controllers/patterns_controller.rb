class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def new
    @brands = Brand.all
  end

  def create
    @pattern = Pattern.new(params.require(:pattern).permit(:name, :brand_id))
    @pattern.save
    redirect_to @pattern
  end

  def show
    @pattern = Pattern.find(params[:id])
  end
end
