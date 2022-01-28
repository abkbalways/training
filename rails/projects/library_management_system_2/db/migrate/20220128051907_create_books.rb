class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :name
      t.references :author, null: false, foreign_key: true
      t.integer :price
      t.integer :copies
    end
  end
end
