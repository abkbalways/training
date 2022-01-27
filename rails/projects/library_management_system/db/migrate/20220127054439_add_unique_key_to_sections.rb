class AddUniqueKeyToSections < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE sections ADD UNIQUE (section_id)"
  end
end
