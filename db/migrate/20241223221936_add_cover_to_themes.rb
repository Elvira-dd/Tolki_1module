class AddCoverToThemes < ActiveRecord::Migration[7.2]
  def change
    add_column :themes, :cover, :string
  end
end
