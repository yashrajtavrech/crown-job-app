class RentPaymentJob < ApplicationJob
    queue_as :default
  
    def perform(*args)
      # Find all tenants
byebug
      Tenant.find_each do |tenant|

        # Check if the tenant has a due payment for the current month
        unless tenant.rent_payments.exists?(due_date: Date.current.beginning_of_month)
          # Generate a new rent payment for the current month
          tenant.rent_payments.create(amount: 1500, due_date: Date.current.beginning_of_month)
        end
      end
      puts "test rentpayment"
    end
  end