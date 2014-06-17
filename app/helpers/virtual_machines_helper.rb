module VirtualMachinesHelper
    def setup_vm(vm)
        vm.service ||= Service.new
        vm
    end
    
end
