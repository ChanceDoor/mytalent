class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user = current_user
    @goals = @user.goals.order('weight DESC')
  end
end
