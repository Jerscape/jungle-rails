class Admin::CategoriesController < ApplicationController

  #http authentication
  http_basic_authenticate_with name: "Jungle", password: "book"
  # before_action :set_post, only: [:edit, :update, :destroy]


  #built by referencing the the products controller
  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end 

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: "Category created!"
    else
      render :new
    end 

  end 

  private 

  def category_params
    params.require(:category).permit(
      :name
    )
  end


  # create_table "categories", force: :cascade do |t|
  #   t.string "name"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end


end
