class Admin::DashboardController < ApplicationController


  #http authentication
  http_basic_authenticate_with name: "Jungle", password: "book"
  before_action :set_post, only: [:edit, :update, :destroy]

  # def fetch_stats
  #   #fetch amount of products
  #   @total_products = Product.count
  #   #fetch total amount of caterories
  #   @total_categories = Category.count
    
  # end

  def show
      #fetch amount of products
      @total_products = Product.count
      #fetch total amount of caterories
      @total_categories = Category.count
  end
end
