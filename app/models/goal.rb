class Goal < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :end_time, :start_time, :title, :weight, :status,:father
end
