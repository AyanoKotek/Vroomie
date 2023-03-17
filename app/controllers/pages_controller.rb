class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about contact]
  def home
    @cars = Car.all
    if params[:query].present?
      @cars = Car.search_by_brand(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  def about
  end

  def contact
  end

  def dashboard
    @user = current_user
    @cars = Car.where(user: @user)
    @bookings = Booking.where(user: @user)
  end
end
