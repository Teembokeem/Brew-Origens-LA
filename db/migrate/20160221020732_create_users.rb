class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pref_name
      t.string :email
      t.string :profile_img
      t.string :password_digest
      t.boolean :panel
      t.boolean :admin

      t.timestamps null: false
    end
  end
end
