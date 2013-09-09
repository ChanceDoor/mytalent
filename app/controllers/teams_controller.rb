class TeamsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @team = Team.find(params[:id])
    @creator = User.find(@team.user_id)
  end
  def new
    @team = current_user.teams.new
  end

  def create
    @team = current_user.teams.new(params[:team])
    respond_to do |format|
      if @team.save
        format.html {redirect_to root_path,notice:'新的团体已建立!开始努力吧!'}
      else
        format.html {redirect_to root_path,error:'团体建立失败'}
      end
    end
  end  
end
