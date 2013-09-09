class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :category
      t.string :description
      t.references :user
      t.string :members

      t.timestamps
    end
    add_index :teams, :user_id
  end
end
