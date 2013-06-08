class GateController < ApplicationController
  def index
    begin
      @goals = User.find(1).goals.order('weight DESC').all
      @fathers = User.find(1).goals.find_all_by_father(0)
    rescue
    end
  end
end
