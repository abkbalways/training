class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.references :head_of_section, null: false, foreign_key: true
    end
  end
end
