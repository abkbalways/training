
class AddForeignKeyToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :sections
  end
end

