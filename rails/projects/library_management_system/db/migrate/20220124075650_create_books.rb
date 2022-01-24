class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :name
      t.string :author
      t.float :price
      t.integer :book_range
      t.float :fine_per_day
      t.integer :copies

      t.timestamps
    end
  end
end
