class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :thumbnail_key
      t.string :category
      t.string :references
      t.string :featured_thumbnail_key
      t.string :thumbnail_cover_key
      t.boolean :highlighted , default: false

      t.timestamps
    end
  end
end
