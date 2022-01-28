class RenameColumnNamesOfIssue < ActiveRecord::Migration[7.0]
  def change
    rename_column :issues, :created_at, :issue_date
    rename_column :issues, :updated_at, :return_date
    change_column_null :issues, :return_date, true
  end
end
