class RenameIndexInBooks < ActiveRecord::Migration[7.0]
  def change
    rename_index :books, 'index_books_on_book_id_new' ,'book_id_index' 
  end
end
