class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.date :show_date, null: false
      t.string :location, null: false
      t.text :setlist
      t.text :notes
    end
  end
end
