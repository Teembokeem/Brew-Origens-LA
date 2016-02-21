class CreateRoasts < ActiveRecord::Migration
  def change
    create_table :roasts do |t|
      t.string :name
      t.string :roaster
      t.string :brand_icon_img
      t.string :content_img
      t.decimal :price

      t.timestamps null: false
    end
  end
end
