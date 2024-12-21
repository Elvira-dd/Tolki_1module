class AddLevelToProfiles < ActiveRecord::Migration[7.2]
  def change
    add_column :profiles, :level, :string
  end
end
