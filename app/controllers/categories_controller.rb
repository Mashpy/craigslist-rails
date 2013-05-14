class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  # def show
  #   @category = Category.find_by_slug(params[:id])
  # end
end
