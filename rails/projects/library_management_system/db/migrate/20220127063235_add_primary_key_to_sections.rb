class AddPrimaryKeyToSections < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE sections ADD PRIMARY KEY (section_id);"
  end
end
