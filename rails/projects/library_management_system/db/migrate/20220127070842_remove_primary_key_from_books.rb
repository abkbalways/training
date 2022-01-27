class RemovePrimaryKeyFromBooks < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE books DROP CONSTRAINT books_pkey;"
    execute "ALTER TABLE books ADD PRIMARY KEY (isbn);"
  end
end
