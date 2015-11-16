class DashboardController < ApplicationController
  def index
    @users_count = User.count
  end

  def ajax
    render layout: false
  end
end
