class AddForeignKeyToStudent < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :students, :sections, column: :section_id, primary_key: :section_id
  end
end
