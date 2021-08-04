class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
  end

  def create

  end

  def edit
    
  end

  def update

  end

  def destroy
   
  end

  private
  
  def city_params
    params.require(:city).permit()
  end 
end
