class Admin::CategoriesController < ApplicationController
  layout 'admin'
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all.order(:id)
  end

  def show
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @category = Category.create(category_params)
    if params[:subs][:sub_id]
      params[:subs][:sub_id].delete_at(0)
      params[:subs][:sub_id].each do |sub|
        subcategory = Category.find(sub)
        subcategory.parent_id = @category.id
        subcategory.save
      end
    end
    redirect_to admin_categories_path
  end

  def update
    @category.update(category_params)
    if params[:subs][:sub_id]
      params[:subs][:sub_id].delete_at(0)
      params[:subs][:sub_id].each do |sub|
        subcategory = Category.find(sub)
        subcategory.parent_id = @category.id
        subcategory.save
      end
    end
    redirect_to admin_category_path(@category)
  end

  def destroy
    @category.destroy
    redirect_to :back
  end

  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:description, :parent_id, :is_items, :title)
  end
end
