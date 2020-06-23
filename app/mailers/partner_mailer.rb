class PartnerMailer < ActionMailer::Base
    default :from => "me@mydomain.com"

    def registration_confirmation(partner)
        @partner = partner
        mail(:to => "#{partner.username} <#{partner.Email}>", :subject => PartnersHelper::Subject_register_confirm)
    end
end