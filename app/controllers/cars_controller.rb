class CarsController < ApplicationController

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end
end
