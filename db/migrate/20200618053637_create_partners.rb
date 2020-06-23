class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|

      t.string :username
      t.string :first_Name
      t.string :last_Name
      t.string :Email
      t.string :password
      t.string :password_confirmation
      t.string :phone
      t.string :country

      t.timestamps

      
    end
  end
end
