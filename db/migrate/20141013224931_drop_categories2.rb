class DropCategories2 < ActiveRecord::Migration
  def change
  	drop_table :categories
  end
end
