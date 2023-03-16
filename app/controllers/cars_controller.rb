class CarsController < ApplicationController

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @user = current_user
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      redirect_to @car
      flash[:success] = "Car Updated!"
    else
      render action: :edit
    end
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

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path, status: :see_other, notice: "Car was successfully deleted."
  end

  private

  def car_params
    params.require(:car).permit(:brand, :description, :year, :price, photos: [])
  end
end
