class AddSpaceToRatings < ActiveRecord::Migration
  def change
    add_reference :ratings, :space, index: true
    add_foreign_key :ratings, :spaces
  end
end
