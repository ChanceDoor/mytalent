class CreateTeamGoals < ActiveRecord::Migration
  def change
    create_table :team_goals do |t|
      t.string :title
      t.string :description
      t.datetime :end_time
      t.datetime :start_time
      t.integer :weight
      t.references :team
      t.string :status
      t.integer :father

      t.timestamps
    end
    add_index :team_goals, :team_id
  end
end
