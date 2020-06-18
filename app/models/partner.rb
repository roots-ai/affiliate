class Partner < ApplicationRecord
	validates :first_Name, :last_Name,:username,:Email,presence: true

	validates :password, confirmation: true
	validates :Email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create ,message:"not valid"}
	 validates :phone, length: { is: 10 }
    validates :Email,:username, uniqueness: true
end
