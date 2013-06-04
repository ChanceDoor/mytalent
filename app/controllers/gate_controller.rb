class GateController < ApplicationController
  def index
    begin
      @goals = User.find(1).goals.order('weight DESC').all
    rescue
    end
  end
end
