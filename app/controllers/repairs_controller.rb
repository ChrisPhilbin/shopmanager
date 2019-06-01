class RepairsController < ApplicationController

	def new
		@repair = Repair.new
		@repair.build_customer
		@repair.build_car
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
		params.require(:repair).permit(:advisornotes, :totalestimate, :actualtotal,
		 :technotes, :estimatelabor, :estimateparts, :actuallabor, :actualparts, :tech_id,
		  customer_attributes: [:firstname, :lastname, :email, :phone],
		   car_attributes: [:year, :make, :model, :color, :vin, :bodystyle, :mileagein, :mileageout])
	end

end