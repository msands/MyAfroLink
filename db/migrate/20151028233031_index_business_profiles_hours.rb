class IndexBusinessProfilesHours < ActiveRecord::Migration
  def up
    add_index :business_profiles, [:hours], name: "business_profiles_gin_hours", using: :gin
  end

  def down
    remove_index :business_profiles, name: 'business_profiless_gin_hours'
  end
end
