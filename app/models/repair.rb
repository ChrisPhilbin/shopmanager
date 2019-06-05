class Repair < ApplicationRecord

	belongs_to :tech
	belongs_to :customer

	belongs_to :car

	accepts_nested_attributes_for :tech
	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :car

	validates_presence_of :advisornotes, :technotes

	def closed_repairs
		Repair.where(open: false)
	end
end
