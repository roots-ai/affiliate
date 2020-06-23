class AddEmailConfirmColumnToPartners < ActiveRecord::Migration[5.1]
  def change
    add_column :partners, :email_confirmed, :boolean, :default => false
    add_column :partners, :confirm_token, :string
  end
end
