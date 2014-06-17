class CreateRackSpaces < ActiveRecord::Migration
  def change
    create_table :rack_spaces do |t|
      t.integer :size
      t.integer :location_id

      t.timestamps
    end
  end
end
