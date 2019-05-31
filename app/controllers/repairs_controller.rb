class RepairsController < ApplicationController

	def new
		@repair = Repair.new
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
		params.require(:repair).permit(:description, :estimate, :total, :tech_id)
	end

end