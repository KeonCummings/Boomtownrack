class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :store
      t.text :description
      t.string :destination_url
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
