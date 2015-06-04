class AddCategoryToBusinessProfile < ActiveRecord::Migration
  def change
    add_column :business_profiles, :category, :string
  end
end
