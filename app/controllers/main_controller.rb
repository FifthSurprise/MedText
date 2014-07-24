class MainController < ApplicationController

  def about
  end

  def search
    address = params[:address]
    @practice = Practice.closest(address,5)
  end

end