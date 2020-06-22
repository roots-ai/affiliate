class WelcomeMailer < ActionMailer::Base
    default :from => "me@mydomain.com"

 def success_confirmation(partner)
    @partner = partner
    mail(:to => "#{partner.username} <#{partner.Email}>", :subject => "Registration Complete")
 end
end