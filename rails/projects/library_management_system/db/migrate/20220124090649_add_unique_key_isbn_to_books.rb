class AddUniqueKeyIsbnToBooks < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE Books ADD UNIQUE (isbn)"
  end
end
