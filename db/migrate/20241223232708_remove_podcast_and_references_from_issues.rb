class RemovePodcastAndReferencesFromIssues < ActiveRecord::Migration[7.2]
  def change
    remove_column :issues, :podcast, :string
    remove_column :issues, :references, :string
  end
end
