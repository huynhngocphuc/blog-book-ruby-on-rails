class ChangeIdArticle < ActiveRecord::Migration[5.2]
    def up
      change_column :articles, :id, :smallint, auto_increment: true
      
    end
  
    def down
      change_column :articles, :id, :bigint, auto_increment: true
    end
  end
  