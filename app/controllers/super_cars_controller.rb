class SuperCarsController < ApiController

  # GET / super_cars
  def index
    @super_cars = SuperCar.select("id, title").all
    render json: @super_cars.to_json
  end

  # GET / super_cars/:id
  def show
    @super_car = SuperCar.find(params[:id])
    render json: @super_car.to_json(:include => {:images => {:only => [:id, :description] }})
  end

end
