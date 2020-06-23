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
            PartnerJob.perform_now(@partner)
            flash[:success]=PartnersHelper::Success
        else
            flash[:warning]=PartnersHelper::Warning_message       
        end
        render "index"
    end


    def confirm_email
        partner = Partner.find_by_confirm_token(params[:id])
        if partner
            partner.email_activate
            flash[:success]=PartnersHelper::Register_confirmation
            WelcomeJob.perform_now(partner)
        else
            flash[:error]=PartnersHelper::Error_message    
        end
        redirect_to '/partners'
    end
    

    private
    def partner_params
        params.require(:partner).permit(:username,:first_Name,:last_Name,:Email,:password,:password_confirmation,:phone,:country)
    end
end
