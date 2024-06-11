class ChangeIdColumnTypeInTableName < ActiveRecord::Migration[5.2]
    def up
      change_column :customers, :id, :smallint, auto_increment: true
      change_column :roles, :id, :smallint, auto_increment: true
    end
  
    def down
      change_column :customers, :id, :bigint, auto_increment: true
      change_column :roles, :id, :bigint, auto_increment: true
    end
  end
  