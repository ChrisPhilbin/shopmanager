class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

	has_many :repairs
	has_many :techs, through: :repairs

	has_many :cars

	validates_presence_of :firstname, :lastname, :email

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

	def self.from_omniauth(auth)
      where(provider: auth.provider, id: auth.uid).first_or_create do |customer|
      	  arr = auth['info']['name'].split(" ")
          customer.firstname = arr[0]
          customer.lastname = arr[1]
	      customer.email = auth.info.email
	      customer.password = Devise.friendly_token[0,20]
      end
  	end
end
