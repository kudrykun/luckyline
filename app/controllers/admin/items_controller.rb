class Admin::ItemsController < ApplicationController
  layout 'admin'
  before_action :set_item, only: [:show,:edit,:update,:destroy]
  # GET /items
  # GET /items.json
  def index
    @items = Item.all.order(:id)
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  def new
    @item = Item.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
  end

  def create
    @item = Item.create(item_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @item.pictures.create(image: image)
      }
    end
    redirect_to admin_items_path
  end

  def update
    @item.update(item_params)
    if params[:images]
      #===== The magic is here ;)
      params[:images].each { |image|
        @item.pictures.create(image: image)
      }
    end
    redirect_to admin_item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to admin_items_path
  end

  private

  def set_item
    @item = Item.friendly.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :category_id, :price,:subs)
  end
end
