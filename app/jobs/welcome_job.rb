class WelcomeJob < ApplicationJob
	queue_as:default

	def perform(partner)
		WelcomeMailer.success_confirmation(partner).deliver
	end
end