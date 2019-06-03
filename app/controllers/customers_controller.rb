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

	def update
		@customer = Customer.find(params[:id])
		if @customer.update_attributes(customer_params)

		else
			render "edit"
		end
	end

	private

	def customer_params
		params.require(:customer).permit(:firstname, :lastname, :email, :phone)
	end

end