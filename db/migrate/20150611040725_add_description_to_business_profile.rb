class AddDescriptionToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :description, :text
  end
end
