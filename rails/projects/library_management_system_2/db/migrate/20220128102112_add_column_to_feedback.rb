class AddColumnToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_reference :feedbacks, :student, index: true
  end
end
