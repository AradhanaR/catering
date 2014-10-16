class Menu < ActiveRecord::Migration
  def up
    create_table :menus do |t|
      t.string :title
      t.text :description
      t.string :cached_slug
      t.float :price, :default => 0
      t.integer :is_special, :default => 0
      t.integer :category_id
      t.timestamps
    end
  end
  
  def down
    drop_table :menus
  end
end
