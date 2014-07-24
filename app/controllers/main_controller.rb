class MainController < ApplicationController

  def about
  end

  def search
    address = params[:address]
    @practice = Practice.closest(address,10)
  end

end