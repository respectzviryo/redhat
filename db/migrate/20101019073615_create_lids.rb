class CreateLids < ActiveRecord::Migration
  def self.up
    create_table :lids do |t|
      t.string :user_id
      t.string :first_name

      t.string :last_name
      t.string :company
      t.string :title
      t.string :lead_source
      t.string :campaign
      t.string :industry
      t.string :annual_revenue

      t.string :street
      t.string :city
      t.string :state_province
      t.string :zip_postal_code
      t.string :country
      t.string :product_interest
      t.string :sic_code
      t.string :number_of_locations

      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :email
      t.string :website
      t.string :lead_status
      t.string :rating
      t.string :no_of_employees

      t.string :current_generator
      t.string :primary

      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :lids
  end
end
