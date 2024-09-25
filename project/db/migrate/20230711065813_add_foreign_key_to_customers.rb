class AddForeignKeyToCustomers < ActiveRecord::Migration[5.2]
    def change
      add_column :customers, :role_id, :smallint
      add_foreign_key :customers, :roles, column: :role_id
    end
  end
  