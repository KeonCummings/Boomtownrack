class CreateFavorites2 < ActiveRecord::Migration
 def change
    create_table :favorites do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end

    add_index :favorites, :product_id
    add_index :favorites, :user_id
    add_index :favorites, [:product_id, :user_id], unique: true
  end
end

