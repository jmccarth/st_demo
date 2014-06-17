module StorageSpacesHelper
    def setup_space(space)
        space.service ||= Service.new
        space
    end
end