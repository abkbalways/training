class AddForeignKeyToStudents < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :students, :sections, column: :section_id, column: :section_id
  end
end
