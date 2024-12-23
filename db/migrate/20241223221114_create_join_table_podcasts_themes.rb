class CreateJoinTablePodcastsThemes < ActiveRecord::Migration[7.2]
  def change
    create_join_table :podcasts, :themes do |t|
      t.index [:podcast_id, :theme_id]
      t.index [:theme_id, :podcast_id]
    end
  end
end
