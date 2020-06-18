class PartnersController < ApplicationController
  def index
    
  end

  def show
    @partners=Partner.all
  end

  def create
    @partners=Partner.new(partner_params)
    if @partners.save
      redirect_to 'partners/index'
    else
      redirect_to 'partners/show'
    end

  end
 private
  def partner_params
    params.require(:post).permit(:username,:first_Name,:last_Name,:Email,:password,:password_confirmation,:phone,:country)
  end
end
