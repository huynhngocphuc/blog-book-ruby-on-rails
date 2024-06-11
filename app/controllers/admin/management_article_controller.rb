# frozen_string_literal: true

module Admin
    # management of all articles of customer
    class ManagementArticleController < AdminController
      def index
        @articles = paginate_item_desc(Article.all)
      end
  
      def show
        @article = find_article
      end
  
      # edit
      def edit
        @article = find_article
        @categories = Category.where(customer_id: @article.customer_id)
      end
  
      def update
        @article = find_article
        if @article.update(article_params)
          flash[:notice] = I18n.t('notice.update_success')
          redirect_to admin_management_article_path(@article)
        else
          flash[:error] = I18n.t('notice.error')
          render :edit, status: :unprocessable_entity
        end
      end
  
      # delete
      def destroy
        @article = find_article
        @article.destroy
        redirect_to admin_management_article_index_path, notice: I18n.t('notice.delete_success')
      end
  
      # common
  
      private
  
      def find_article
        Article.find(params[:id])
      end
  
      def article_params
        params.require(:article).permit(:title, :content, :short_description, :share_mode, :image, :category_id)
      end
    end
  end
  