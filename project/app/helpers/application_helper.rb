# frozen_string_literal: true

# helper use in view
module ApplicationHelper
    def display_role(role_id)
      case role_id
      when ADMIN_ROLE
        'navigations/nav_admin'
      when CUSTOMER_ROLE
        'navigations/nav_customer'
      else
        'Blogbook'
      end
    end
  
    def current_controller?(controller_name)
      controller.controller_name == controller_name
    end
    
    def current_locale?(current_locale)
      I18n.locale == current_locale
    end
  
    def share_mode_show(share_mode)
      case share_mode
      when 'private'
        content_tag(:span, share_mode, class: 'label label-danger')
      else
        content_tag(:span, share_mode, class: 'label label-success')
      end
    end
  
    def both_public(category, article)
      category&.public_mode? && article.public_mode? || article.category.blank? && article.public_mode?
    end
  end
  