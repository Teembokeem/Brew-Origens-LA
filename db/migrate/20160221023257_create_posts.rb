class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tldr
      t.text :content
      t.string :rating
      t.references :user, index: true, foreign_key: true
      t.references :roast, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
