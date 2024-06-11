class AddDeleteAtToArticle < ActiveRecord::Migration[5.2]
    def change
      add_column :articles, :delete_at, :datetime
      add_index :articles, :delete_at
    end
  end
  