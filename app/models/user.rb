class User < ActiveRecord::Base
	has_many :comerrs
	has_secure_password

	validates :email, uniqueness: true, presence: true
	validates :name, presence: true
end
