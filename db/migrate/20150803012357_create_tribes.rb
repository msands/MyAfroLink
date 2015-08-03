class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :new_tribe

      t.timestamps null: false
    end
  end
end
