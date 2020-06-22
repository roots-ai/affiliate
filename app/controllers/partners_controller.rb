class PartnersController < ApplicationController

    def index
    @partner=Partner.new

    end

    def new
    @partner=Partner.new

    end

    def show

        @partner=Partner.all
    end

    def create
        @partner=Partner.new(partner_params)
        if @partner.valid?
            @partner.save
            PartnerMailer.registration_confirmation(@partner).deliver
            flash[:success] = "Signup Successful!Please confirm your email address to continue"
            render "index"
        else
            render "index"    
        end
    end

    def confirm_email
        partner = Partner.find_by_confirm_token(params[:id])
        if partner
            partner.email_activate
            flash[:success] = "Welcome to the Sample App! Your email has been confirmed.
            Please sign in to continue."
            WelcomeMailer.success_confirmation(partner).deliver
            redirect_to '/partners'
        else
            flash[:error] = "Sorry. User does not exist"
            redirect_to '/partners'
        end
    end

    private
    def partner_params
        params.require(:partner).permit(:username,:first_Name,:last_Name,:Email,:password,:password_confirmation,:phone,:country)
    end
end
