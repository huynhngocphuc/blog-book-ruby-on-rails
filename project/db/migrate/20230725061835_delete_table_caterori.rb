class DeleteTableCaterori < ActiveRecord::Migration[5.2]
    def change
      drop_table :caterories
    end
  end
  