class BookingsController < ApplicationController
  before_action :set_car, only: [:new, :create, :show, :destroy]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car

    if @booking.save
      redirect_to root_path, notice: "Booking done successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to root_path, status: :see_other, notice: "Booking was successfully deleted."
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
