class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :show, null: false
      t.integer :score, null: false
      t.text :body, null: false
    end
  end
end
