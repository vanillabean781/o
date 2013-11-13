class AddNameToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :collection_name, :string
  end
end
