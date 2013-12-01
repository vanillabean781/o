class AddTagsToPins < ActiveRecord::Migration
  def change
    add_column :pins, :tag, :string
  end
end
