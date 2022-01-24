class ChangeClassToSections < ActiveRecord::Migration[7.0]
  def change
    rename_table :classes, :sections
  end
end
