class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :start_date
      t.string :datetime
      t.string :end_date
      t.string :datetime
      t.string :elapsed_time
      t.string :time
      t.string :movie
      t.string :references
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
