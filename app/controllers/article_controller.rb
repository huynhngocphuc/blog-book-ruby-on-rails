# frozen_string_literal: true

# control action on an article of customer
class ArticleController < ApplicationController
    before_action :authenticate_customer!, except: [:show]
    def index
      @articles = current_customer.articles.paginate(page: params[:page], per_page: 2).order(created_at: :desc)
    end
  
    def show
      @article = find_article
    end
  
    # create
    def new
      @article = current_customer.articles.build
      @categories = categories_get
    end
  
    def create
      @article = current_customer.articles.build(article_params)
      @categories = categories_get
      if @article.save
        redirect_to @article, notice: I18n.t('notice.create_success')
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    # edit
    def edit
      @article = find_article
      @categories = categories_get
    end
  
    def update
      @article = find_article
      @categories = categories_get
      if @article.update(article_params)
        flash[:notice] = I18n.t('notice.update_success')
        redirect_to @article
      else
        flash[:error] = I18n.t('notice.error')
        render :edit, status: :unprocessable_entity
      end
    end
  
    # delete
    def destroy
      @article = find_article
      @article.destroy
  
      redirect_to article_index_path, notice: I18n.t('notice.delete_success')
    end
  
    # common
  
    private
  
    def find_article
      current_customer.articles.find(params[:id])
    end
  
    def categories_get
      current_customer.categories
    end
  
    def article_params
      params.require(:article).permit(:title, :content, :short_description, :share_mode, :image, :category_id)
    end
  end
  