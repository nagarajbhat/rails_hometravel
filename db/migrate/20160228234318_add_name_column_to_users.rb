class AddNameColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null:false, default: ""
    add_column :users, :address, :string, null:false, default: "" 
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
