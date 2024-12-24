class AddDescriptionToThemes < ActiveRecord::Migration[7.2]
  def change
    add_column :themes, :description, :text
  end
end
