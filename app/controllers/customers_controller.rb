class CustomersController < ApplicationController

	def new
		@customer = Customer.new
	end

	def index
		if params[:tech_id]
			@customers = Customer.customerstouched(params[:tech_id])
			binding.pry
			render 'customers/viewbytech'
		else
			@customers = Customer.all
		end
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