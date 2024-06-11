class ChangeIdCategory < ActiveRecord::Migration[5.2]
  def up
    change_column :categories, :id, :smallint, auto_increment: true
    
  end

  def down
    change_column :categories, :id, :bigint, auto_increment: true
  end
end
