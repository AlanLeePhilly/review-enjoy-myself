class AddIndexToShows < ActiveRecord::Migration[5.1]
  def change
    add_index :shows, :show_date, unique: true
  end
end
