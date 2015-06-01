class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :city
      t.time :time_open
      t.time :time_close

      t.timestamps null: false
    end
  end
end
