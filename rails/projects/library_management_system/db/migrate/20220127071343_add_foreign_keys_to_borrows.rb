class AddForeignKeysToBorrows < ActiveRecord::Migration[7.0]
  def change
    execute("ALTER TABLE borrows
    ADD CONSTRAINT fk_borrows_books FOREIGN KEY (isbn) REFERENCES books (isbn);")
    add_foreign_key "borrows", "students", primary_key: "student_id"
  end
end
