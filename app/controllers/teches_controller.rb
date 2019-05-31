class TechesController < ApplicationController

	def new
		@tech = Tech.new
	end

	def create
		@tech = Tech.new(tech_params)
		if @tech.save
			redirect_to @tech
		else
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
