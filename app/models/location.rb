class Location < ActiveRecord::Base
    has_many :servers
    has_many :rack_spaces
    
    def get_used()
        used = 0
        self.rack_spaces.each do |rs|
            used += rs.size
        end
        self.servers.each do |s|
            used += s.size
        end
        used / self.capacity.to_f * 100
    end
end
