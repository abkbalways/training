class RenameColumnToClass < ActiveRecord::Migration[7.0]
  def change
    rename_column :sections, :class_id, :section_id
  end
end
