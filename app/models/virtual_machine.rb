class VirtualMachine < ActiveRecord::Base
    belongs_to :server
    belongs_to :service
    accepts_nested_attributes_for :service
end
