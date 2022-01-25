class RenameColumnToStudent < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class_id, :section_id
  end
end
