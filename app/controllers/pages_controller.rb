class PagesController < ApplicationController

  def home
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end
end
