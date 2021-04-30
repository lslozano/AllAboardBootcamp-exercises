class CarController < ApplicationController
    def sample_car
        car = Car.all.sample
        render plain: car.make_and_model
    end

    def all_cars
        cars = Car.all
        render_cars(cars)
    end

    def car_by_make
        make = params[:make]
        get_cars_by_make = Car.where(make: make.capitalize).all
        render_cars(get_cars_by_make)
    end

    private

    def render_cars(cars)
        cars_list =  cars.map { |car| car.make_and_model}.join(", ")
        render plain: cars_list
    end
end
