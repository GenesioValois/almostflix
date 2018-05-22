class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :favoritable
      t.string :references{polymorphic}
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
