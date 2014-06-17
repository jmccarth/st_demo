class Server < ActiveRecord::Base
    has_many :virtual_machines
    has_many :storage_spaces
    belongs_to :location
    belongs_to :service
end
