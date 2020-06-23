class WelcomeMailer < ActionMailer::Base
    default :from => "me@mydomain.com"

    def success_confirmation(partner)
        @partner = partner
        mail(:to => "#{partner.username} <#{partner.Email}>", :subject => PartnersHelper::Subject_welcome_message)
    end
end