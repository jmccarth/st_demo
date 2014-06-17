class Service < ActiveRecord::Base
    has_one :server
    has_one :rack_space
    has_one :storage_space
    has_one :virtual_machine
    has_one :user
    has_many :payments
end
