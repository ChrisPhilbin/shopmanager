class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :repairs
	has_many :techs, through: :repairs

	has_many :cars

	validates_presence_of :firstname, :lastname, :phone, :email

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

	def self.customerstouched(tech_id)
		@id = tech_id
		@repairs = Repair.where("tech_id = ?", @id)
		@customers = []
		@techscustomers = []
		@repairs.each do |repair|
			if repair[:customer_id]
				@customers << repair
			end
		end.uniq
		@customers.each do |customer|
			@techscustomers << Customer.find(customer[:id])
		end
		@techscustomers
	end
end
