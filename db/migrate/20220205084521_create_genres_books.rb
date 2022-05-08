class CreateGenresBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :genres_books do |t|
      t.belongs_to :book, foreign_key: true
      t.belongs_to :genre, foreign_key: true
      t.timestamps
    end
  end
end
