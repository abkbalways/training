class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :city
      t.bigint :mobile
      t.references :section, null: false, foreign_key: true
      t.datetime :dob
      t.timestamps
    end
  end
end
