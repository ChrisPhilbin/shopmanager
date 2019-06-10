class Tech < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :repairs
	has_many :customers, through: :repairs

	validates_presence_of :firstname, :lastname, :email

	def fullname
		"#{self.firstname} #{self.lastname}"
	end

end
