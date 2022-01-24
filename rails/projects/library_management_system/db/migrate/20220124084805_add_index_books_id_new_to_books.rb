class AddIndexBooksIdNewToBooks < ActiveRecord::Migration[7.0]
  def change
    add_index :books, :book_id_new
  end
end
