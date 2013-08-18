#encoding:utf-8
class SGoalsController < ApplicationController
  before_filter :authenticate_user!
  def index
    sgoals = SGoal.find(:all,:conditions =>["title like?","%#{params[:title]}%"])
    fgoals = FGoal.find(:all,:conditions =>["title like?","%#{params[:title]}%"])
    @goals = sgoals.concat(fgoals)
  end
end
