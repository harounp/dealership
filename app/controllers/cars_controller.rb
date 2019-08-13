class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def new
        @car = Car.new 
    end

    def create
        @car = Car.new (car_params)
        if @car.save
            redirect_to cars_url
        end
    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private 

    def car_params
        params.require(:car).permit(:make, :model, :style, :colour, :seats ,:range, :fuel) 
    end

end
