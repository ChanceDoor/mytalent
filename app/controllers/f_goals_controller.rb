#encoding:utf-8
class FGoalsController < ApplicationController
  before_filter :authenticate_user!
  def create
    goal = FGoal.new
    goal.title=params[:title]
    goal.degree=params[:degree]
    goal.description=params[:description]
    goal.days=params[:days]
    goal.creater=current_user.name
    respond_to do |format|
      if goal.save
        format.html {redirect_to '#',notice:'目标已建立!'}
      else
        format.html {redirect_to '#',error:'目标建立失败'}
      end
    end
  end
end
