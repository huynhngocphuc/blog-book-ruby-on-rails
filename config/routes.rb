Rails.application.routes.draw do

    scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
      root to: 'feed#index_articles_feed'
      resources :article
      resources :category
      devise_for :customers
      get '/customers', to: redirect('/customers/sign_up')
      scope '/feed' do
        get 'articles', to: 'feed#index_articles_feed', as: 'index_articles_feed'
        get 'categories', to: 'feed#index_categories_feed', as: 'index_categories_feed'
        get 'articles/:id', to: 'feed#show_article_feed', as: 'show_article_feed'
        get 'categories/:id', to: 'feed#show_category_feed', as: 'show_category_feed'
        get 'search', to: 'search#search_article_result'
      end
  
      namespace :admin do
        resources :management_article
        resources :management_category
        resources :management_customer do
          patch :toggle_active, on: :member
          get :show_modal, on: :member
        end
        get 'management_customer/index'
      end
    end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  