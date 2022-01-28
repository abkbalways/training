class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :feedback_title
      t.integer :stars
      t.string :feedbackable_id
      t.timestamps
    end
  end
end
