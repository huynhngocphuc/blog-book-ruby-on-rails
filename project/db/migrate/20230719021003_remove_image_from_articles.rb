class RemoveImageFromArticles < ActiveRecord::Migration[5.2]
    def change
      remove_column :articles, :image
    end
  end
  