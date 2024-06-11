# frozen_string_literal: true

# control action on an category of customer
class CategoryController < ApplicationController
    before_action :authenticate_customer!, except: [:show]
  
    def index
      @categories = paginate_item_desc(current_customer.categories)
      @categories_with_article_count = count_articles_by_category
    end
  
    def show
      @category = find_category
      @articles = paginate_item_desc(current_customer.articles.where(category_id: params[:id]))
    end
  
    # create
    def new
      @category = current_customer.categories.build
    end
  
    def create
      @category = current_customer.categories.build(category_params)
  
      if @category.save
        redirect_to category_index_path, notice: I18n.t('notice.create_success')
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    # edit
    def edit
      @category = find_category
    end
  
    def update
      @category = find_category
      if @category.update(category_params)
        flash[:notice] = I18n.t('notice.update_success')
        redirect_to category_index_path
      else
        flash[:error] = I18n.t('notice.error')
        render :edit, status: :unprocessable_entity
      end
    end
  
    # delete
    def destroy
      @category = find_category
      @category.destroy
      redirect_to category_index_path, notice: I18n.t('notice.delete_success')
    end
  
    # common
    private
  
    def find_category
      current_customer.categories.find(params[:id])
    end
  
    def category_params
      params.require(:category).permit(:title, :content, :share_mode)
    end
  end
  