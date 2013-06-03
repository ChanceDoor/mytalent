class GateController < ApplicationController
  def index
    begin
      @goals = User.find(1).goals.all
    rescue
    end
  end
end
