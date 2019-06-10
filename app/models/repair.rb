class Repair < ApplicationRecord

	belongs_to :tech
	belongs_to :customer

	belongs_to :car

	accepts_nested_attributes_for :tech
	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :car

	validates_presence_of :customercomments

	def self.closed_repairs
		Repair.where(open: false)
	end

	def self.open_repairs
		Repair.where(open: true)
	end

	def self.unassigned_repairs
		Repair.where(tech_id: 2)
	end

end
