class DashboardController < ApplicationController
  def index
    @users_count = User.count
  end
end
