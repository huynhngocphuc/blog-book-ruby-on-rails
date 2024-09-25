# frozen_string_literal: true

module Admin
    # management of all categories of customer
    class ManagementCategoryController < AdminController
      def index
        @categories = paginate_item_desc(Category.all)
        @categories_with_article_count = count_articles_by_category
      end
  
      def show
        @category = find_category
        @articles = paginate_item_desc(Article.where(category_id: params[:id]))
      end
  
      # edit
      def edit
        @category = find_category
      end
  
      def update
        @category = find_category
        if @category.update(category_params)
          flash[:notice] = I18n.t('notice.update_success')
          redirect_to admin_management_category_index_path
        else
          flash[:error] = I18n.t('notice.error')
          render :edit, status: :unprocessable_entity
        end
      end
  
      # delete
      def destroy
        @category = find_category
        @category.destroy
        redirect_to admin_management_category_index_path, notice: I18n.t('notice.delete_success')
      end
  
      # common
  
      private
  
      def find_category
        Category.find(params[:id])
      end
  
      def category_params
        params.require(:category).permit(:title, :content, :share_mode)
      end
    end
  end
  