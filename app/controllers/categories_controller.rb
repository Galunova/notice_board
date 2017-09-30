class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @category = Category.destroy(params[:id])
    redirect_to root_path
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
