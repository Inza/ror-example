class DashboardController < ApplicationController
  def index
    @users_count = User.count
  end

  def ajax
    @data = 'nbshbdljalkf;'

    respond_to do |format|
      format.html { render layout: false }
      format.json { render json: {data:@data} }
    end
  end
end
