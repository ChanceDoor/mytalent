class GateController < ApplicationController
  def index
    @goals = User.find(1).goals.all
  end
end
