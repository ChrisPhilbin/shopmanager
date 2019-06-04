class StaticController < ApplicationController

	def index
		if customer_signed_in?
			redirect_to customers_path
		else
			redirect_to new_customer_registration_path
		end
	end
end
