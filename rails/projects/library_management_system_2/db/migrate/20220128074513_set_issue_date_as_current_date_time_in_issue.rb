class SetIssueDateAsCurrentDateTimeInIssue < ActiveRecord::Migration[7.0]
  def change
    change_column :issues, :issue_date, :datetime, default: -> {'now()'}
  end
end
