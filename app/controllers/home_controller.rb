class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = current_user
    @fathers = @user.goals.find_all_by_father(0)
    @goals = @user.goals.all
    @teams = @user.teams.all
  end
end
