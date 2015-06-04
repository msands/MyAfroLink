class AddWebsiteToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :website, :string
  end
end
