class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def new
  end

  def create
    @pattern = Pattern.new(params.require(:pattern).permit(:name,:brand))
    @pattern.save
    redirect_to @pattern
  end

  def show
    @pattern = Pattern.find(params[:id])
  end
end
