class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :tldr
      t.text :content
      t.integer :user_rating
      t.float :flavor_rating
      t.float :originality_rating
      t.float :aroma_rating
      t.float :roast_rating
      t.references :user, index: true, foreign_key: true
      t.references :roast, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
