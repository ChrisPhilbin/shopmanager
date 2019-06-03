class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def index
		@customers = Customer.all
	end

	def edit
		@customer = Customer.find(params[:id])
	end

end