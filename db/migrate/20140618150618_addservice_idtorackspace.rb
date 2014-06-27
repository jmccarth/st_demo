class AddserviceIdtorackspace < ActiveRecord::Migration
  def change
      add_column :rack_spaces, :service_id, :integer
  end
end
