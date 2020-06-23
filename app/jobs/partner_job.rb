class PartnerJob < ApplicationJob
	queue_as:default

	def perform(partner)
		PartnerMailer.registration_confirmation(partner).deliver
	end

end