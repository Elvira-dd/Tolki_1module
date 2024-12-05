class CreateLikes < ActiveRecord::Migration[7.2]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :likeable_type
      t.integer :likeable_id

      t.timestamps
    end
  end
end
