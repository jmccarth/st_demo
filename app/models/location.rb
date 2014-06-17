class Location < ActiveRecord::Base
    has_many :servers
    has_many :rack_spaces
end
