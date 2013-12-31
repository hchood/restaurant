class DropCategories < ActiveRecord::Migration
  def up
    drop_table :categories
    remove_column :menu_items, :category_id
    add_column :menu_items, :category, :string
  end

  def down
    create_table :categories do |t|
      t.string :name, null: false
    end
    remove_column :menu_items, :category
    add_column :menu_items, :category_id, :integer
  end
end
