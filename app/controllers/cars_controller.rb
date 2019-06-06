class CarsController < ApplicationController

	def show

	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.new
		if car.save?
			redirect_to customer_cars_path
		else
			render 'new'
		end
	end

	def index
		@cars = current_customer.cars
	end

end