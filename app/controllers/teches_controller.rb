class TechesController < ApplicationController

	def new
		@tech = Tech.new
	end

	def create
		@tech = Tech.new(tech_params)
		if @tech.save
			flash.now.alert = "The new tech has been saved to the app!"
			redirect_to @tech
		else
			flash.now.alert = "The new tech could not be saved - Please correct the below errors!"
			render :new
		end
	end

	def show
		@tech = Tech.find(params[:id])
	end

	def index
		@techs = Tech.all
	end

	private

	def tech_params
		params.require(:tech).permit(:firstname, :lastname)
	end
end
