# frozen_string_literal: true

# common funtion use all controller
class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_locale
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %I[first_name last_name role active])
      devise_parameter_sanitizer.permit(:account_update, keys: %I[first_name last_name])
    end
  
    def count_articles_by_category
      Category.left_joins(:articles)
              .group(:category_id)
              .count
    end
  
    def count_articles_public_by_category
      Category.left_joins(:articles)
              .where(articles: { share_mode: 'public' })
              .group(:category_id)
              .count
    end
  
    def paginate_item_desc(item)
      item.paginate(page: params[:page], per_page: 12).order(created_at: :desc)
    end
  
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
    
    def default_url_options
      { locale: I18n.locale }
    end
  end
  