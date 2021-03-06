class RepairsController < ApplicationController

	def new
		@repair = Repair.new
		@customer = Customer.find(params[:customer_id])
		@car = Car.find(params[:car_id])
	end

	def create
		@repair = Repair.new(repair_params)
		if @repair.save
			redirect_to customer_car_repairs_path(@repair.customer_id, @repair.car_id)
		else
			flash.now.alert = "Repair order could not be saved - Please correct the below errors"
			@customer = Customer.find(params[:customer_id])
			@car = Car.find(params[:car_id])
			render 'new'
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

	def openrepairs
		@repairs = Repair.open_repairs
	end

	def closedrepairs
		@repairs = Repair.closed_repairs
	end

	def unassignedrepairs
		@repairs = Repair.unassigned_repairs
		binding.pry
	end	

	private

	def repair_params
		params.require(:repair).permit(:customercomments, :customer_id, :car_id, :tech_id)
	end

end