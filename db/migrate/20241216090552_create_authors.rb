class CreateAuthors < ActiveRecord::Migration[7.2]
  def change
    create_table :authors do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
