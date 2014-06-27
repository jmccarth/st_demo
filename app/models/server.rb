class Server < ActiveRecord::Base
    has_many :virtual_machines
    has_many :storage_spaces
    belongs_to :location
    belongs_to :service
    
    def get_hd_used()
        hdcap = self.hd
        hdused = 0
        self.virtual_machines.each do |vm|
            hdused += vm.hd
        end
        self.storage_spaces.each do |stor|
            hdused += stor.amount
        end
        hdused_perc = hdused.to_f / hdcap * 100
        hdused_perc
    end
    
    def get_mem_used()
        memcap = self.mem
        memused = 0
        self.virtual_machines.each do |vm|
            memused += vm.mem
        end
        memused_perc = memused.to_f / memcap * 100
        memused_perc
    end
    
    def get_cpu_used()
        cpucap = self.cpu
        cpuused = 0
        self.virtual_machines.each do |vm|
            cpuused += vm.cpu
        end
        cpuused_perc = cpuused.to_f / cpucap * 100
        cpuused_perc
    end
end
