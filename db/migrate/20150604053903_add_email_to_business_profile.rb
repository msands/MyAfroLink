class AddEmailToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :email, :string
  end
end
