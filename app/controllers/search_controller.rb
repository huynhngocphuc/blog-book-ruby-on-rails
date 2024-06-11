class SearchController < ApplicationController
    def search_article_result
        search_results = Article.search(params[:search_query])
        @articles = search_results.map do |result|
            article = Article.new
            article.id = result._source["id"]
            article.title = result._source["title"]
            article.short_description = result._source["short_description"]
            article.content = result._source["content"]
            article.share_mode = result._source["share_mode"]
            article.created_at = result._source["created_at"]
            article.updated_at = result._source["updated_at"]
            article.image_data = result._source["image_data"]
            article.customer_id = result._source["customer_id"]
            article.deleted_at = result._source["deleted_at"]
            article.category_id = result._source["category_id"]
            article
        end
    end
end
