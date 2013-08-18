#encoding:utf-8
class GoalsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @user = current_user
    p '=========='
    p params[:goal]
    @goal = @user.goals.new(params[:goal])
    respond_to do |format|
      if @goal.save
        format.html {redirect_to root_path,notice:'新的目标已建立!开始努力吧!'}
      else
        format.html {redirect_to root_path,error:'目标建立失败'}
      end 
    end
  end

  def new
    @user = current_user
    @goal = @user.goals.new
    goals = @user.goals.find_all_by_status('0')
    @goals = [["无",0]]
    goals.each{|x| if x.id != @goal.id then @goals.push([x.title,x.id]) end}
  end

  def edit
    @user = current_user
    @goal = @user.goals.find(params[:id])
    goals = @user.goals.find_all_by_status('0')
    @goals = [["无",0]]
    goals.each{|x| if x.id != @goal.id then @goals.push([x.title,x.id]) end}
  end
  
  def update
    @user = current_user
    @goal = @user.goals.find(params[:id])
    respond_to do |format|
      if @goal.update_attributes(params[:goal])
        format.html {redirect_to root_path,notice:'目标已更新'}
      else
        format.html {redirect_to root_path,error:'更新失败'}
      end
    end

  end
  def destroy
    @user = current_user
    @goal = @user.goals.find(params[:id])
    @goal.destroy
    respond_to do |format|
        format.html {redirect_to root_path,notice:'目标已删除'}
    end
  end
end
