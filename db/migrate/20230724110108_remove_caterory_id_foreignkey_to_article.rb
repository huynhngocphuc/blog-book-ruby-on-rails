class RemoveCateroryIdForeignkeyToArticle < ActiveRecord::Migration[5.2]
    def change
      remove_column :articles, :caterories_id
    end
  end
  