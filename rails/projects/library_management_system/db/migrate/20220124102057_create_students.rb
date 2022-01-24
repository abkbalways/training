class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.string :name
      t.string :city
      t.string :mobile
      t.string :class_id
      t.date :dob
      t.timestamps
    end
  end
end
