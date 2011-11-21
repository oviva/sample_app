class CategoriesController < ApplicationController
  def new
    @title = "New category"
  end
  
  def show
    @category = Category.find(params[:id])
    @title = @category.name
  end

end
