class Admin::DashboardController < ApplicationController

  #http authentication
  http_basic_authenticate_with name: "Jungle", password: "book"
  before_action :set_post, only: [:edit, :update, :destroy]

  def show
  end
end
