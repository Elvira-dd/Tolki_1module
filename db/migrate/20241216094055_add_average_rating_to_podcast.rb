class AddAverageRatingToPodcast < ActiveRecord::Migration[7.2]
  def change
    add_column :podcasts, :average_rating, :string
  end
end
