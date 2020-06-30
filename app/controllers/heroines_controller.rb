class HeroinesController < ApplicationController
  before_action :heroine_find, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end
  
  def new
    @heroine = Heroine.new 
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @heroine.save
    redirect_to @heroine
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power)
  end

  def heroine_find
    @heroine = Heroine.find(params[:id])
  end
end
