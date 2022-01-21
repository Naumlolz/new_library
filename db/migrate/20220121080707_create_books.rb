class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :author, foreign_key: true
      t.belongs_to :genre, foreign_key: true
      t.timestamps
    end
  end
end
