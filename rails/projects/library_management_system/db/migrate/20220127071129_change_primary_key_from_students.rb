class ChangePrimaryKeyFromStudents < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE students DROP CONSTRAINT students_pkey;"
    execute "ALTER TABLE students ADD PRIMARY KEY (student_id);"
  end
end
