class RemovePrimaryKeyToSection < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE sections DROP CONSTRAINT sections_pkey;"
  end
end


