class RepairsController < ApplicationController

	def new
		@repair = Repair.new
		@customer = Customer.find(params[:customer_id])
		@car = Car.find(params[:car_id])
	end

	def create
		@repair = Repair.new(repair_params)
		if @repair.save
			redirect_to @repair
		else
			render :new
		end
	end

	private

	def repair_params
		params.require(:repair).permit(:customer_id, :advisornotes, :totalestimate, :actualtotal,
		 :technotes, :estimatelabor, :estimateparts, :actuallabor, :actualparts, :tech_id,
		   car_attributes: [:year, :make, :model, :color, :vin, :bodystyle, :mileagein, :mileageout])
	end

end