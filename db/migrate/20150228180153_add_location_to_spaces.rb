class AddLocationToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :address, :string
    add_column :spaces, :latitude, :float
    add_column :spaces, :longitude, :float
  end
end
