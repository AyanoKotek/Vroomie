class PagesController < ApplicationController
  def home
  end

  def show
    @car = Car.fid(params[:id])
  end

end
