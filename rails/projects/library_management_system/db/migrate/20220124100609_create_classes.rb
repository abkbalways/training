class CreateClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :class_id, null:false 
      
    end
  end
end
