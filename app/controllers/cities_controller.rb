class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @users = User.where(city_id: "#{params[:id]}")
    puts @users
  
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