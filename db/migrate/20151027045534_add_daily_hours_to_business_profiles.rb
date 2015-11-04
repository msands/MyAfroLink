class AddDailyHoursToBusinessProfiles < ActiveRecord::Migration
  def change
    add_column :business_profiles, :hours, :hstore
  end
end
