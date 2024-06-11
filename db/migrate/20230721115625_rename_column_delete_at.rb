class RenameColumnDeleteAt < ActiveRecord::Migration[5.2]
    def change
      rename_column :articles, :delete_at, :deleted_at
    end
  end
  