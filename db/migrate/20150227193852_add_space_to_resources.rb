class AddSpaceToResources < ActiveRecord::Migration
  def change
    add_reference :resources, :space, index: true
    add_foreign_key :resources, :spaces
  end
end
