class RemoveIndexToBooks < ActiveRecord::Migration[7.0]
  def change
    remove_index :books, :book_id_new
  end
end
