class StaticController < ApplicationController

	def index
		if customer_signed_in?
			redirect_to customer_cars_path(current_customer)
		else
			redirect_to new_customer_registration_path
		end
	end
end
