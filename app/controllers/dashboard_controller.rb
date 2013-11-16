class DashboardController < ApplicationController
  before_filter :authenticate_user!
  layout :dashboard

  def index
  end

  def blood_reading
    puts params[:test]
    render nothing: true
  end
end
