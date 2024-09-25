class RenameColumCustomerIdInCategories < ActiveRecord::Migration[5.2]
    def change
      rename_column :categories, :customers_id, :customer_id
    end
  end
  