class Team < ActiveRecord::Base
  belongs_to :user
  attr_accessible :category, :description, :members, :name
  has_many :team_goals
end
