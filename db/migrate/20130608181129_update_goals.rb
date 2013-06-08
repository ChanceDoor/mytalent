class UpdateGoals < ActiveRecord::Migration
  def up
    for goal in Goal.all
    if goal.father == nil
      goal.update_attribute(:father,0)
    end
    end
  end

  def down
  end
end
