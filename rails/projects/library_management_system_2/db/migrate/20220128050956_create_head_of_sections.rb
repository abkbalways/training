class CreateHeadOfSections < ActiveRecord::Migration[7.0]
  def change
    create_table :head_of_sections do |t|
      t.string :name
    end
  end
end
