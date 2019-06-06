class CarsController < ApplicationController

	def show

	end

	def new
		@car = Car.new
	end

end