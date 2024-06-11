class CreateCategories < ActiveRecord::Migration[5.2]
    def change
      create_table :categories do |t|
        t.string :title, limit: 140
        t.text :content, limit: 300
        t.string :share_mode
        t.timestamps
      end
    end
  end
  