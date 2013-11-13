class AddCollectionToPins < ActiveRecord::Migration
  def change
    add_column :pins, :collection_id, :integer
    add_index :pins, :collection_id
  end
end
