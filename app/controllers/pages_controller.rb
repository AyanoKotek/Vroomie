class PagesController < ApplicationController

  def home
    @cars = Car.all
  end

  def show
    @car = Car.fid(params[:id])
  end
end
