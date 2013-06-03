class GoalsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @user = current_user
    @goal = @user.goals.new(params[:goal])
    respond_to do |format|
      if @goal.save
        format.html {redirect_to root_path,notice:'Goal was created.'}
      else
        format.html {redirect_to root_path,error:'Creation failed.'}
      end 
    end
  end

  def new
    @user = current_user
    @goal = @user.goals.new
  end

  def edit
    @user = current_user
    @goal = @user.goals.find(params[:id])
  end
  
  def update
    @user = current_user
    @goal = @user.goals.find(params[:id])
    respond_to do |format|
      if @goal.update_attributes(params[:goal])
        format.html {redirect_to root_path,notice:'Goal was updated.'}
      else
        format.html {redirect_to root_path,error:'Update failed.'}
      end
    end

  end
  def destroy
    @user = current_user
    @goal = @user.goals.find(params[:id])
    @goal.destroy
    respond_to do |format|
        format.html {redirect_to root_path,notice:'Goal was deleted.'}
    end
  end
end
