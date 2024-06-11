class AddIdCustomerToArticle < ActiveRecord::Migration[5.2]
    def change
      add_reference :articles, :customers, foreign_key: true, type: :smallint
    end
  end
  