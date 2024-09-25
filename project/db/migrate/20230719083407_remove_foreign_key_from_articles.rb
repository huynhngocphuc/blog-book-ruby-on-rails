class RemoveForeignKeyFromArticles < ActiveRecord::Migration[5.2]
    def change
      remove_column :articles, :customers_id
    end
  end
  