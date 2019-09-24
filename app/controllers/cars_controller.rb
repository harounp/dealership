class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def new
        @car = Car.new 
        @car_makes = CarMake.all
        @car_models = CarModel.all
    end

    def create
        @car_makes = CarMake.all
        @car_models = CarModel.all
        
        @car = Car.create!(car_params)
        @car.car_photo.attach(params[:car][:car_photo])
        flash.now[:notice] = "test"
        render action: :new
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
        params.require(:car).permit(:car_model_id, :style, :colour, :mileage, :price, :car_photo) 
    end

end
