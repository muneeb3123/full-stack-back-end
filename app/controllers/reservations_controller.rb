class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
  
    def index
        @reservations = current_user.reservations.order(created_at: :desc)
      
        car_info = @reservations.map do |reservation|
          car = Car.find(reservation.car_id)
          { name: car.name, image: car.image }
        end
      
        merged_data = @reservations.map.with_index do |reservation, index|
          reservation.attributes.merge(car_info[index])
        end
      
        render json: merged_data
      end
      
      
  
    def create
      @reserve = current_user.reservations.new(reservation_params)
      if @reserve.save
        render json: { response: 'Successfully added to reservation' }
      else
        render json: @reserve.errors.full_messages, status: :unprocessable_entity
      end
    end
  
    private
  
    def reservation_params
      params.require(:reservation).permit(:car_id, :city, :date)
    end
  end
  