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
        @car = Car.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy
        Car.find(params[:id]).destroy
        redirect_to cars_url
    end

    private 

    def car_params
        params.require(:car).permit(:id, :make, :model, :style, :colour, :seats ,:range, :fuel) 
    end

end
