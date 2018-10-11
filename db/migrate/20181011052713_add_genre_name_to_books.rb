class AddGenreNameToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :genre_name, :string
  end
end
