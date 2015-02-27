class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.timestamp :start
      t.timestamp :end
      t.string :status

      t.timestamps null: false
    end
  end
end
