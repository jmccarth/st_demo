class CreateStorageSpaces < ActiveRecord::Migration
  def change
    create_table :storage_spaces do |t|
      t.integer :amount
      t.text :comments
      t.integer :server_id
      t.integer :service_id

      t.timestamps
    end
  end
end
