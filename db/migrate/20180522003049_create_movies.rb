class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :thumbnail_key
      t.string :video_key
      t.string :episode_number
      t.string :integer
      t.string :featured_thumbnail_key
      t.string :serie
      t.string :references{optional}
      t.string :category
      t.string :references
      t.string :thumbnail_cover_key

      t.timestamps
    end
  end
end
