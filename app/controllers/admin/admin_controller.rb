# frozen_string_literal: true

module Admin
    # Handles administrative tasks and permissions.
    class AdminController < ApplicationController
      before_action :authenticate_customer!, :require_admin
  
      private
  
      def require_admin
        return if current_customer.role_id == 1
  
        redirect_to root_path, alert: 'You are not authorized to access this page.'
      end
    end
  end
  