class HeroinesController < ApplicationController
  before_action :find_params, only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  # def show
  #   @heroines = Heroine.find(params[:id])
  # end 

  def new
    @heroines = Heroine.new
  end 

  # def create
  #   @heroines = Heroine.new(params.require(:name, :super_name))
  # end

  private
  def find_params
      heroines = Heroine.find(params[:id])
  end 

end
