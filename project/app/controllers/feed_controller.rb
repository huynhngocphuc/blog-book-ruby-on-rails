# frozen_string_literal: true

# control action on an feed
class FeedController < ApplicationController

    def index_articles_feed
      add_breadcrumb I18n.t('navigations.feeds'), :root_path
      @articles = paginate_item_desc(Article.filtered_articles)
      render 'index_articles_feed'
    end
  
    def index_categories_feed
      add_breadcrumb I18n.t('navigations.feeds'), :root_path
      @categories =  paginate_item_desc(Category.includes(:customer).where(customers: { active: true }))
      @categories_with_article_count = count_articles_public_by_category
      render 'index_categories_feed'
    end
  
    def show_article_feed
      add_breadcrumb I18n.t('navigations.feeds'), :root_path
      @article = Article.includes(:customer).find(params[:id])
      add_breadcrumb I18n.t('navigations.category'), index_categories_feed_path
      add_breadcrumb I18n.t('navigations.article'), index_articles_feed_path
      add_breadcrumb @article.id, show_article_feed_path(@article)
      if @article.private_mode?
        redirect_to root_path, alert: "This article is private."
        return
      end
      render 'show_article_feed'
    end
  
    def show_category_feed
      add_breadcrumb I18n.t('navigations.feeds'), :root_path
      @category = Category.includes(:customer).find(params[:id])
      @articles = paginate_item_desc(Article.where(category_id: params[:id]))
      add_breadcrumb I18n.t('navigations.category'), index_categories_feed_path
      add_breadcrumb @category.id, show_category_feed_path(@category)
      if @category.private_mode?
        redirect_to root_path, alert: "This article is private."
        return
      end
      render 'show_category_feed'
    end
  end
  