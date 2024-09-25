class RenameCustomersId < ActiveRecord::Migration[5.2]
    def change
      rename_column :articles, :customers_id, :customer_id
    end
  end
  