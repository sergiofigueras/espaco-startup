class CreateRatingsUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :ratings_users, id: false do |t|
      t.column :user_id, :integer
      t.column :rating_id, :integer
    end
  end
end
