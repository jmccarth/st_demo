class CreateVirtualMachines < ActiveRecord::Migration
  def change
    create_table :virtual_machines do |t|
      t.string :hostname
      t.string :os
      t.integer :hd
      t.integer :mem
      t.integer :cpu
      t.text :comments
      t.integer :server_id
      t.integer :service_id

      t.timestamps
    end
  end
end
