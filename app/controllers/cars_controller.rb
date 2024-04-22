class CarsController < ApplicationController
    before_action :load_car, only: %i[show destroy]
    before_action :authenticate_user!, only: %i[create destroy]
  
    def index
      @cars = Car.all
      render json: @cars
    end
  
    def show
      @car = Car.find(params[:id])
      render json: [@car]
    end
  
    def new
      @car = Car.new
    end
  
    def create
      @car = Car.new(car_params)
      if @car.save
        render json: { data: @car, message: 'Car created successfully' }
      else
        render json: { error: @car.errors.full_messages }
      end
    end
  
    def destroy
      @car = Car.find(params[:id])
      if @car.destroy!
        render json: { message: 'Car Deleted' }
      else
        render json: { error: 'Not Found' }
      end
    end
  
    private
  
    def car_params
      params.require(:car).permit(:name, :description, :finance_fee, :option_to_purchase_fee, :total_amount_payable,
                                  :duration, :apr, :image, :color)
    end
  
    def load_car
      @car = Car.find(params[:id])
    end
  end
  