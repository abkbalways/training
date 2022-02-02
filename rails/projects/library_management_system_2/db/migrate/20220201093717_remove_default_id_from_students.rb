class RemoveDefaultIdFromStudents < ActiveRecord::Migration[7.0]
  def change
    change_column_default :students, :id, nil
  end
end
