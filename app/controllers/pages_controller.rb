class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def about
  end

  def contact
  end

  def dashboard
  end
end
