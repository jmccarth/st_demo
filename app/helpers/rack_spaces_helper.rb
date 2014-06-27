module RackSpacesHelper
    def setup_rackspace(rackspace)
        rackspace.service ||= Service.new
        rackspace
    end
end
