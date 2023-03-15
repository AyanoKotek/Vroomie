class CarsController < ApplicationController

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
     flash[:notice] = "Added successfully"
     redirect_to root_path
     else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:brand, :description, :year, :price, :photo)
  end
end
