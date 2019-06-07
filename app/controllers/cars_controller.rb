class CarsController < ApplicationController

	def show

	end

	def new
		@car = Car.new(customer_id: current_customer.id)
	end

	def create
		@car = Car.new(car_params)
		if @car.save
			redirect_to customer_cars_path
		else
			render 'new'
		end
	end

	def index
		@cars = current_customer.cars
	end

	def edit
		@car = Car.find(params[:id])
	end

	def update
		@car = Car.find(params[:id])
		@car.update_attributes(car_params)
		redirect_to customer_cars_path
	end

	private

	def car_params
		params.require(:car).permit(:year, :make, :model, :customer_id)
	end

end