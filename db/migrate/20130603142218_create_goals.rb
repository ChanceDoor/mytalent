class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :weight
      t.references :user

      t.timestamps
    end
    add_index :goals, :user_id
  end
end
