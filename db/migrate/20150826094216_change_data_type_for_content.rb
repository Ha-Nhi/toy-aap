class ChangeDataTypeForContent < ActiveRecord::Migration
  def up
    change_column :microposts, :content,:text
    remove_column :microposts,:text
  end
  def down
    change_column :microposts, :content,:string
    add_column :microposts, :text
  end
end
