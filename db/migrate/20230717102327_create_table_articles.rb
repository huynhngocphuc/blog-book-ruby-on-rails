class CreateTableArticles < ActiveRecord::Migration[5.2]
    def change
      create_table :articles do |t|
        t.string :title, limit: 140
        t.string :short_description, limit: 300
        t.text :content
        t.string :share_mode
        t.string :image
        t.boolean :isdelete
  
        t.timestamps
      end
    end
  end
  