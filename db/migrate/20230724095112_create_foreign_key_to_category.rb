class CreateForeignKeyToCategory < ActiveRecord::Migration[5.2]
    def up
      add_reference :categories, :customers, foreign_key: true, type: :smallint
    end
    def down
      remove_reference :categories, :customers, foreign_key: true
    end
  end
  