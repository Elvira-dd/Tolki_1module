class AddCoverToPodcasts < ActiveRecord::Migration[7.2]
  def change
    add_column :podcasts, :cover, :string
  end
end
