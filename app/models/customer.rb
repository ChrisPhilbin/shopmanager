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
end
