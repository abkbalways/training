class RenameColumnToFeedback < ActiveRecord::Migration[7.0]
  def change
    rename_column :feedbacks, :feedback_title, :feedbackable_type
  end
end
