class AddLastWatchedEpisodeToSeries < ActiveRecord::Migration[5.2]
  def change
    add_column :series, :last_watched_episode, :string
    add_column :series, :references, :string
  end
end
