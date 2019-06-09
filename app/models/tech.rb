class Tech < ApplicationRecord

	has_many :repairs
	has_many :customers, through: :repairs

	validates_presence_of :firstname, :lastname, :email

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

end
