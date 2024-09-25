class CustomerMailer < ApplicationMailer
    def set_inactive(customer)
      mail(to: customer.email, subject: 'Inactive account') do |format|
          format.html { render layout: 'mailer'}
      end
    end
  
    def destroy_customer(customer)
      mail(to: customer.email, subject: 'Delete account') do |format|
          format.html { render layout: 'mailer'}
      end
    end
  end
  