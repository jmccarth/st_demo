class Service < ActiveRecord::Base
    has_one :server
    has_one :rack_space
    has_one :storage_space
    has_one :virtual_machine
    has_one :user
    has_many :payments
    
    def get_payment_total()
        total = 0
        self.payments.each do |p|
            total += p.amount
        end
        total
    end
    
    def get_balance()
        total = self.get_payment_total()
        balance = self.cost - total
        balance
    end
    
    def self.get_expiring()
        Service.where("enddate <= ?", Date.today + 6.month)
    end
    
end
