class Repair < ApplicationRecord

	belongs_to :tech
	belongs_to :customer

	belongs_to :car

	accepts_nested_attributes_for :tech

end
