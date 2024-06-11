class ChangeDataImage < ActiveRecord::Migration[5.2]
    def change
      change_column :articles, :image, :text
    end
  end
  