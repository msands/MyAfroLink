class CreateHoursOfOperations < ActiveRecord::Migration
  def change
    create_table :hours_of_operations do |t|
      t.time :Sunday
      t.time :Monday
      t.time :Tuesday
      t.time :Wednesday
      t.time :Thursday
      t.time :Friday
      t.time :Saturday

      t.timestamps null: false
    end
  end
end
