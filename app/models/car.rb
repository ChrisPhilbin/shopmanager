class Car < ApplicationRecord

	belongs_to :customer
	has_many :repairs

	validates_presence_of :year, :make, :model

	def ymm
		"#{self.year} #{self.make} #{self.model}"
	end
	
end
