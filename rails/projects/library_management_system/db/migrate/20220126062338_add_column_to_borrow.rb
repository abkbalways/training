class AddColumnToBorrow < ActiveRecord::Migration[7.0]
  def change
    add_column :borrows, :accept, :boolean
  end
end
