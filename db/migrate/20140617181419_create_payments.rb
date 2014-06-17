class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :accounttype
      t.string :accountnum
      t.date :paymentdate
      t.integer :amount
      t.integer :service_id

      t.timestamps
    end
  end
end
