class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :type
      t.string :user_id
      t.string :servicetype_id
      t.date :startdate
      t.date :enddate
      t.decimal :cost

      t.timestamps
    end
  end
end
