class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.string :genre_id
      t.string :integer

      t.timestamps
    end
  end
end
