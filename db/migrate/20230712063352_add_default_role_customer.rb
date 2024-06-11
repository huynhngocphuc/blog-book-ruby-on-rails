class AddDefaultRoleCustomer < ActiveRecord::Migration[5.2]
    def change
      change_column :customers, :role_id, :smallint, default: 2
      #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    end
  end
