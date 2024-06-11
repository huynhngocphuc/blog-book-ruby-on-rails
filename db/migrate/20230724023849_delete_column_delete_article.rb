class DeleteColumnDeleteArticle < ActiveRecord::Migration[5.2]
    def up
      remove_column :articles, :isdelete
    end
  
    def down
      add_column :articles, :isdelete, :boolean
    end
  end
  