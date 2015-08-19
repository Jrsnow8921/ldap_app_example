class HomeController < ApplicationController

  def index
    @home = Home.all
    render :index 
  end
end

