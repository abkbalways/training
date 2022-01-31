class AddDefaultIdinStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :id, :integer, :default => Student.last.id+1
  end
end
