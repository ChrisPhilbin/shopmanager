class Customer < ApplicationRecord

	has_many :repairs
	has_many :techs, through: :repairs

	has_many :cars

	validates_presence_of :name, :email
end
