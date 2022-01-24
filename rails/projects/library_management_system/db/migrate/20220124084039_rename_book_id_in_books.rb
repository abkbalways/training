class RenameBookIdInBooks < ActiveRecord::Migration[7.0]
  def change
    rename_column :books, :book_id, :book_id_new
  end
end
