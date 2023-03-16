class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about contact]
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
    @user = current_user
    @cars = Car.where(user: @user)

  end
end
