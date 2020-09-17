class CreateArtistImages < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_images do |t|
      t.references :image, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
