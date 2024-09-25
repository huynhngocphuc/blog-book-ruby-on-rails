# frozen_string_literal: true

module Admin
    # management of infomation of customer
    class ManagementCustomerController < AdminController
      def index
        @customers = Customer.where(customers: { role_id: CUSTOMER_ROLE })
                             .paginate(page: params[:page], per_page: 5)
                             .order(created_at: :desc)
      end
  
      # edit
      def update
        @customer = find_customer
        if @customer.update(customer_params)
          flash[:notice] = I18n.t('notice.update_success')
          redirect_to request.referer
        else
          flash[:error] = I18n.t('notice.error')
          render :edit, status: :unprocessable_entity
        end
      end
  
      # destroy
  
      def destroy
        @customer = find_customer
        @customer.destroy
        CustomerMailer.destroy_customer(@customer).deliver_later
        redirect_to request.referer, notice: I18n.t('notice.delete_success')
      end
  
      def toggle_active
        session[:current_page] = params[:page] if params[:page].present?
        @customer = find_customer
        CustomerMailer.set_inactive(@customer).deliver_later if @customer.active
        @customer.update(active: !@customer.active)
        redirect_to request.referer, notice: I18n.t('notice.toggled_success')
      end
  
      def show_modal
        @customer = find_customer
        render partial: 'modal_form', locals: { customer: @customer }
      end
  
      private
  
      def find_customer
        Customer.find(params[:id])
      end
  
      def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email)
      end
    end
  end
  