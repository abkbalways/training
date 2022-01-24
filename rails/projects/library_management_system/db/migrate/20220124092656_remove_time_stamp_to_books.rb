class RemoveTimeStampToBooks < ActiveRecord::Migration[7.0]
  def change
    remove_timestamps(:books)
  end
end
