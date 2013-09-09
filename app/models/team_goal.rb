class TeamGoal < ActiveRecord::Base
  belongs_to :team
  attr_accessible :description, :end_time, :father, :start_time, :status, :title, :weight
end
