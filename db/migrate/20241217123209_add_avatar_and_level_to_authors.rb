class AddAvatarAndLevelToAuthors < ActiveRecord::Migration[7.2]
  def change
    add_column :authors, :avatar, :text
    add_column :authors, :level, :integer
  end
end
