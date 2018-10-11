class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :author
      t.string :publisher
      t.string :genre_name
      t.references :genres, foreign_key: true

      t.timestamps
    end
  end
end
