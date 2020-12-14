class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :context, null: false
      t.integer :evaluation_id, null: false
      t.references :map, null: false, foreign_key: true
      t.timestamps
    end
  end
end
