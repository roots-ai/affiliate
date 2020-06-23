class Partner < ApplicationRecord

	before_create :confirmation_token


	validates :first_Name, :last_Name,:username,:Email,presence: true
	validates :password, confirmation: true
	validates :Email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create ,message:"not valid"}
	validates :phone, length: { is: 10 }
    validates :Email,:username, uniqueness: true


    def email_activate
        self.email_confirmed = true
        self.confirm_token = nil
        save!(:validate => false)
    end


    private
    def confirmation_token
      if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
    end
end
