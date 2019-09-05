require 'test_helper'

class SuperCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_car = super_cars(:one)
  end

  test "should get index" do
    get super_cars_url, as: :json
    assert_response :success
  end

  test "should create super_car" do
    assert_difference('SuperCar.count') do
      post super_cars_url, params: { super_car: { assembly: @super_car.assembly, description: @super_car.description, engine: @super_car.engine, horsepower: @super_car.horsepower, layout: @super_car.layout, manufacturer: @super_car.manufacturer, predecessor: @super_car.predecessor, production: @super_car.production, source: @super_car.source, title: @super_car.title } }, as: :json
    end

    assert_response 201
  end

  test "should show super_car" do
    get super_car_url(@super_car), as: :json
    assert_response :success
  end

  test "should update super_car" do
    patch super_car_url(@super_car), params: { super_car: { assembly: @super_car.assembly, description: @super_car.description, engine: @super_car.engine, horsepower: @super_car.horsepower, layout: @super_car.layout, manufacturer: @super_car.manufacturer, predecessor: @super_car.predecessor, production: @super_car.production, source: @super_car.source, title: @super_car.title } }, as: :json
    assert_response 200
  end

  test "should destroy super_car" do
    assert_difference('SuperCar.count', -1) do
      delete super_car_url(@super_car), as: :json
    end

    assert_response 204
  end
end
