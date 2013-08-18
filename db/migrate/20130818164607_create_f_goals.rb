class CreateFGoals < ActiveRecord::Migration
  def change
    create_table :f_goals do |t|
      t.string :title
      t.string :description
      t.integer :days
      t.integer :degree
      t.string :creater

      t.timestamps
    end
  end
end
