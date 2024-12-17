class AddCoverToTag < ActiveRecord::Migration[7.2]
  def change
    add_column :tags, :cover, :text
  end
end
