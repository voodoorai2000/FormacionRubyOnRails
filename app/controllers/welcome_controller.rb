class WelcomeController < ApplicationController
  def index
    ### Temporary
    cookies[:registered] = nil
    ###
    @cities = City.all
  end
end
