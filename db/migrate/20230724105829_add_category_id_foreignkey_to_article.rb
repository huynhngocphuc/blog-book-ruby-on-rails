class AddCategoryIdForeignkeyToArticle < ActiveRecord::Migration[5.2]
    def up
      add_reference :articles, :categories, foreign_key: true, type: :smallint
      
    end
  
    def down
      remove_reference :articles, :categories, foreign_key: true
    end
  end
  