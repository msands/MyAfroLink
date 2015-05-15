class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email_address
      t.string :tribe

      t.timestamps null: false
    end
  end
end
