class SuperCarsController < ApplicationController
  before_action :set_super_car, only: [:show, :update, :destroy]

  # GET /super_cars
  def index
    @super_cars = SuperCar.all

    render json: @super_cars
  end

  # GET /super_cars/1
  def show
    render json: @super_car
  end

  # POST /super_cars
  def create
    @super_car = SuperCar.new(super_car_params)

    if @super_car.save
      render json: @super_car, status: :created, location: @super_car
    else
      render json: @super_car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /super_cars/1
  def update
    if @super_car.update(super_car_params)
      render json: @super_car
    else
      render json: @super_car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /super_cars/1
  def destroy
    @super_car.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_car
      @super_car = SuperCar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def super_car_params
      params.require(:super_car).permit(:title, :description, :manufacturer, :production, :assembly, :layout, :engine, :horsepower, :predecessor, :source)
    end
end
