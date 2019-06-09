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
			render 'repairs/new'
		end
	end

	def index
		if params[:tech_id]
			@repairs = Repair.where(tech_id: params[:tech_id])
			@tech = Tech.find(params[:tech_id])
			render '/teches/show_all_repairs'
		else
			@repairs = Repair.where(car_id: params[:car_id])
			@car = Car.find(params[:car_id])
		end
	end

	private

	def repair_params
		params.require(:repair).permit(:customercomments, :customer_id, :car_id, :tech_id)
	end

end