class CreateBorrows < ActiveRecord::Migration[7.0]
  def change
    create_table :borrows do |t|
      t.integer :isbn
      t.integer :student_id
      t.datetime "issue_date", precision: 6, null: false
      t.datetime "submission_date", precision: 6, null: false
    end
  end
end
