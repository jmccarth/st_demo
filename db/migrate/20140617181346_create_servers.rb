class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :model
      t.integer :hd
      t.integer :mem
      t.integer :cpu
      t.string :os
      t.integer :size
      t.integer :location_id
      t.integer :service_id

      t.timestamps
    end
  end
end
