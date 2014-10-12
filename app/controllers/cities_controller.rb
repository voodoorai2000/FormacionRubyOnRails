class CitiesController < ApplicationController
  
  def show
    @city = City.friendly.find(params[:id])
    @user = User.new
  end
  
end
