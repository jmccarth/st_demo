class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :room
      t.integer :capacity

      t.timestamps
    end
  end
end
